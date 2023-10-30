#!/usr/bin/env bash

# Vérifier si au moins un argument est passé au script
if [ "$#" -ne 1 ]; then
  echo "Utilisation : $0 <fichier_url>"
  exit 1
fi

url_file=$1

# Vérifier si le fichier existe
if [ ! -f "$url_file" ]; then
  echo "Le fichier $url_file n'existe pas."
  exit 1
fi

# Définir le nom du fichier HTML de sortie
output_file="../html/resultats.html"

# Ouvrir le fichier HTML de sortie pour écriture
{
  # Initialisation HTML
  cat <<EOF
  <!DOCTYPE html>
  <html>
  <head>
  <title>Résultats pour chaque URL</title>
  <style>
    table {
      border-collapse: collapse;
      width: 100%;
    }
    th, td {
      border: 1px solid black;
      padding: 8px;
      text-align: left;
    }
  </style>
  </head>
  <body>
  <h1>HTML Résultats URL</h1>
  <table>
  <tr>
  <th>Ligne</th>
  <th>URL</th>
  <th>Code HTTP</th>
  <th>Encodage</th>
  <th>Résultat</th>
  </tr>
EOF

  lineno=0  # Initialisation du compteur de lignes

  # Lire le fichier ligne par ligne
  while read -r line; do
    lineno=$((lineno + 1))

    # Récupérer les en-têtes du code HTTP
    http_info=$(curl -sIL "$line")

    # Extraire le code HTTP
    http_code=$(echo "$http_info" | grep -e "^HTTP/" | grep -Eo "[[:digit:]]{3}" | tail -n 1)

    # Extraire l'encodage
    encodage=$(curl -Ls "$line" | grep -Eo "charset=.+" | cut -d'"' -f2)

    # Le cas où l'encodage est absent
    if [ -z "$encodage" ]; then
      charset="Non détecté"
    else
      charset="$encodage"
    fi

    # Déterminer si le lien est utilisable
    result=""
    if [ "$http_code" -eq 200 ] && [ "$charset" = "UTF-8" ]; then
      result="Utilisable"
    else
      result="Non Utilisable"
    fi

    # Afficher la ligne du tableau
    cat <<EOF
    <tr>
    <td>$lineno</td>
    <td><a href="$line">$line</a></td>
    <td>$http_code</td>
    <td>$charset</td>
    <td>$result</td>
    </tr>
EOF

  done < "$url_file"

  # Fin du tableau et de la page HTML
  echo "</table>"
  echo "</body>"
  echo "</html>"

} > "$output_file"

echo "Les résultats ont été enregistrés dans $output_file"


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
output_file="../html/resultats_projet.html"

# Ouvrir le fichier HTML de sortie pour écriture
{
  # Début du code HTML
  cat <<HTML
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Tableau des URLS</title>
</head>
<body>
  <!-- Début du tableau -->
  <h1 style="text-align: center;">Tableau des URLs $(basename "$url_file")</h1>
  <table border="1" style="margin: auto;">
    <thead>
      <tr>
        <th>ligne</th>
        <th>code HTTP</th>
        <th>URL</th>
        <th>encodage</th>
      </tr>
    </thead>
    <tbody>
HTML

  lineno=0  # Initialisation du compteur de lignes

  # Lire le fichier ligne par ligne
  while read -r line; do
    lineno=$((lineno + 1))

    # Récupérer les en-têtes du code HTTP
    http_info=$(curl -sIL "$line")

    # Extraire le code HTTP
    http_code=$(echo "$http_info" | grep -e "^HTTP/" | grep -Eo "[[:digit:]]{3}" | tail -n 1)

    # Extraire l'encodage à partir de l'en-tête "Content-Type"
    encodage=$(echo "$http_info" | grep -Eo "charset=[^ ]+" | cut -d'=' -f2)

    # Le cas où l'encodage est absent
    if [ -z "$encodage" ]; then
      charset="Non détecté"
    else
      charset="$encodage"
    fi

    # Afficher la ligne du tableau
    cat <<HTML
      <tr>
        <td>$lineno</td>
        <td>$http_code</td>
        <td><a href="$line">$line</a></td>
        <td>$charset</td>
      </tr>
HTML

  done < "$url_file"

  # Fin du tableau et de la page HTML
  cat <<HTML
    </tbody>
  </table>
</body>
</html>
HTML
} > "$output_file"

echo "Les résultats ont été enregistrés dans $output_file"
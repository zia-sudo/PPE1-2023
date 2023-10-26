#!/usr/bin/env bash

# Vérifier s'il y a au moins un argument passé au script
if [ "$#" -ne 1 ]; then
  echo "Utilisation : $0 <fichier_url>"
  exit 1
#else
  #if [ -f $1]
  #then
    #echo "on a bien un fichier"
  #else
    #echo "on attend un fichier qui exsite"
    #exit
  #fi
fi

url_file=$1

# Vérifier si le fichier existe
if [ ! -f "$url_file" ]; 
then
  echo "Le fichier $url_file n'existe pas."
  exit 1
else
  echo "Nous avons bien un fichier"
fi

# Initialiser un compteur de ligne
lineno=0

# Utiliser une boucle while pour lire le fichier ligne par ligne
while read -r line; 
do
  #((lineno++)) # Incrémenter le compteur de ligne
  lineno=$(expr $lineno + 1)
  curl_info=$(curl -s -I "$line") # Récupérer les en-têtes de la réponse HTTP
  http_code=$(echo "$curl_info" | grep -oP '(?<=HTTP/1.1 )[0-9]+') # Extraire le code de réponse HTTP
  content_type=$(echo "$curl_info" | grep -i -oP '(?<=Content-Type: ).*') # Extraire l'en-tête "Content-Type"
  # Extraire l'encodage à partir de l'en-tête "Content-Type"
  encodage=$(echo "$content_type" | grep -o -i 'charset=[^;]*')

  if [ "$http_code" == "200" ]; 
  then
    resultat="Ok"
  else
    resultat="Not Ok"
  fi
  
  echo -e "$lineno\t$line\t$http_code\t$resultat\t$encodage"
  # -e permet d'utiliser des échappements tels que \t pour les tabulations
  # Afficher le numéro de ligne, l'URL, le code de réponse HTTP, le résultat (Ok/Not Ok), et l'encodage


done < "$url_file" > url_file_reponse.tsv


#while read -r line; 
#do
  #((numero_ligne++)) # Incrémenter le compteur de ligne
  #curl_info=$(curl -s -o /dev/null -w "%{http_code}" "$line")
  # -s "silent" pour supprimer les infos inutiles
  # -o /dev/null "redirection de la sortie standard" /dev/null affiche seulement les entêtes
  # %{http_code} pour récupérer uniquement le code de réponse HTTP de la requête.

  #if [ "$curl_info" -eq 200 ]; then
    #result="Ok"
  #else
    #result="Not Ok"
  #fi



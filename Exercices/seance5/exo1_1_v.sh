#!/usr/bin/env bash

# Vérifier le nombre d'arguments
if [ "$#" -ne 2 ]; then
  echo "Merci de saisir deux arguments : <année> <type_entite>"
  exit 1
fi

annee="$1"
type_entite="$2"

# Vérifier si l'année est entre 2016 et 2018
if ((annee >= 2016 && annee <= 2018)); then
    resultats=$(cat "./ann/$annee"/*/*.ann | grep "$type_entite" | wc -l)
    echo "$type_entite pour l'année $annee : $resultats"
else
    echo "$annee n'existe pas (n'est pas entre 2016 et 2018.)"
fi
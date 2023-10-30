#!/usr/bin/env bash

# Vérifier le nombre d'arguments
if [ "$#" -ne 1 ]; then
  echo "Merci de saisir un argument : <type_entite>"
  exit 1
fi

type_entite="$1"

for annee in 2016 2017 2018; do
  echo "Les résultats de l'année "$annee" sont enregistrés dans le fichier r_exo1_v : "
  ./exo1_1.sh "$annee" "$type_entite" >> r_exo1_v.txt
done
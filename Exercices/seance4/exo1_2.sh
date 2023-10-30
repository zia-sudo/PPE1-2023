#!/usr/bin/env bash

type_entite="$1"

for annee in 2016 2017 2018; do
  echo "Les résultats de l'année "$annee" sont enregistrés dans le fichier r_exo1.txt!"
  ./exo1_1.sh "$annee" "$type_entite" >> r_exo1.txt
done
#!/usr/bin/env bash

type_entite="$1"

for annee in 2016 2017 2018; do
  echo "$type_entite pour l'année $annee :"
  ./exo1_1.sh "$annee" "$type_entite" >> r_exo1.txt
done
#!/usr/bin/env bash

annee="$1"
type_entite="$2"

echo "$type_entite pour l'année $annee :"
cat ./ann/$annee/*/*.ann | grep $type_entite | wc -l

#!/usr/bin/env bash

# Vérifier le nombre d'arguments
if [ "$#" -ne 3 ]; then
  echo "Merci de saisir trois arguments : <année> <mois> <nombre_lieux_afficher>"
  exit 1
fi

annee="$1"
mois="$2"
nombre_lieux_afficher="$3"

# Vérifier l'existence du répertoire écrit
if [ ! -d "./ann/$annee/$mois" ]; then
  echo "Ce répertoire n'existe pas : ./ann/$annee/$mois"
  exit 1
fi

# Vérifier que le troisième argument est un nombre entier positif
if ! [[ "$nombre_lieux_afficher" =~ ^[0-9]+$ ]]; then
  echo "Le nombre de lieux à afficher doit être un nombre entier positif."
  exit 1
fi

cat "./ann/$annee/$mois"/*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n "$nombre_lieux_afficher"

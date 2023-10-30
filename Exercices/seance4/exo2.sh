#!/usr/bin/env bash

annee="$1"
mois="$2"
nombre_lieux_afficher="$3"

cat ./ann/$annee/$mois/*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n "$nombre_lieux_afficher"
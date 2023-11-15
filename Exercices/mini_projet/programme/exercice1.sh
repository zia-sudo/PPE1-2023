#!/bin/bash

# Vérifier le nombre d'arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <chemin_vers_fichier>"
    exit 1
fi

text="$1"

mots=$(egrep -o '\b[[:alnum:]]+\b' "$text" | tr '[:upper:]' '[:lower:]')
echo "$mots" #> result_ex1.txt
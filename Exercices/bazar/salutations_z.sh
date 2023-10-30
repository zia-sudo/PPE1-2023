#!/usr/bin/env bash

echo "le premier argument est: ($1)"

if [ -z "$1" ]
then
    echo "le premier argument est vide"
    exit # Cela permet de sortir du script, la suite du fichier ne sera pas lue.
fi

echo "le premier argument n'est pas vide"

if [[ $1 =~ ^bon(jour|soir)$ ]]
then
    echo "salut"
fi

echo "fin du programme"
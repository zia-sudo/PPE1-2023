#!/usr/bin/env bash

while read LINE
do
    echo "la ligne est : $LINE"
done < ./r_exo1.txt #redirection qui permet d'affecter une valeur, si on ne met rien après done sans rediction, c'est donc à nous d'écrire la ligne à lire

echo "on a fini"
#crt+d pour sortir proprement du script ctr+c salement c'est à dire que la fin du script ne sera pas lu
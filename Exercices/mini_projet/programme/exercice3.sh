#!/bin/bash

# Vérifier le nombre d'arguments
if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
    echo "Usage: $0 <chemin_vers_fichier> [nombre_de_bigrammes]"
    exit 1
fi

file="$1"
nb_bigrammes="${2:-25}"  # Si le deuxième argument n'est pas fourni, utiliser 25 par défaut

# Extraction des mots et conversion en minuscules
egrep -o "\w+" "$file" | tr "[:upper:]" "[:lower:]" | tr -d ",?;.:!()\"" > fichier_bigramme_1.txt

# Création d'un fichier intermédiaire avec une ligne en blanc
echo -e "\r" > fichier_bigramme_2.txt

# Extraction des mots du fichier et ajout au fichier intermédiaire
egrep -o "\w+" "$file" | tr "[:upper:]" "[:lower:]" | tr -d ",?;.:!()\"" >> fichier_bigramme_2.txt

# Utilisation de la commande paste pour combiner les mots consécutifs en paires (bigrammes)
paste -d " " fichier_bigramme_2.txt fichier_bigramme_1.txt | sort | uniq -c | sort -nr | head -n "$nb_bigrammes" > bigrammes.txt

# Affichage d'un message indiquant où les résultats ont été enregistrés
echo "Les $nb_bigrammes bigrammes les plus fréquents dans $file ont été enregistrés dans bigrammes.txt."
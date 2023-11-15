#!/bin/bash

# Vérifier le nombre d'arguments
if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
    echo "Usage: $0 <chemin_vers_fichier> [nombre_de_mots]"
    exit 1
fi

# Récupérer le chemin vers le fichier et le nombre de mots à afficher
text="$1"
nb_words="${2:-25}"  # Si le deuxième argument n'est pas fourni, utiliser 25 par défaut

# Appeler le script de l'exercice 1, convertir en minuscules, trier, compter les occurrences,
# trier par nombre d'occurrences décroissant et prendre les n premiers mots
result=$(bash ./exercice1.sh "$text" | sort | uniq -c | sort -nr | head -n "$nb_words")

# Enregistrer le résultat dans un fichier
echo "$result" #> frequence_mots.txt

# Afficher un message indiquant où les résultats ont été enregistrés
echo "Les $nb_words mots les plus fréquents dans $text ont été enregistrés dans frequence_mots.txt."
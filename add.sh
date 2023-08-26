#!/bin/bash

# Lire le contenu du premier fichier
contenu=$(<$1)

# Ajouter le contenu au deuxième fichier
echo "$contenu" >> $2

echo "Le contenu du fichier source a été ajouté au fichier destination."

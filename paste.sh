#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: bash <( curl -s https://tsh.vpws.eu/paste.sh ) <fichier>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Erreur: Le fichier $fichier n'existe pas."
    exit 1
fi

response=$(curl -X POST -s "https://paste.vpws.eu/documents" --data-binary @"$1")

if [ $? -eq 0 ]; then
    key=$(echo "$response" | jq -r .key)
    echo "https://paste.vpws.eu/$key"
else
    echo "Une erreur s'est produite lors du téléchargement."
fi

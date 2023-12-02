#!/bin/bash

echo "Analizando palíndromos en el archivo: $1"

# Leer el archivo línea por línea
while IFS= read -r word; do
    reversed=$(echo "$word" | rev)
    if [ "$word" == "$reversed" ]; then
        echo "$word es palíndromo."
    fi
done < "$1"

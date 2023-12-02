#!/bin/bash

echo "Analizando palíndromos en el archivo: $1"

# Leer el archivo línea por línea y verificar si cada línea es un palíndromo
while IFS= read -r line; do
    reversed=$(echo "$line" | rev)
    if [ "$line" == "$reversed" ]; then
        echo "$line es palíndromo."
    fi
done < "$1"


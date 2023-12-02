#!/bin/bash

# Verificar si el argumento tiene la extensión .txt
if [[ $1 =~ \.txt$ ]]; then 
    echo "Analizando palíndromos en el archivo: $1"

    # Leer el archivo línea por línea
    while IFS= read -r word; do
        reversed=$(echo "$word" | rev)
        if [ "$word" == "$reversed" ]; then
            echo "$word es palíndromo."
        fi
    done < "$1"
else
    echo "El archivo no parece ser un archivo de texto con extensión .txt."
fi

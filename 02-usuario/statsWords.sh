#!/bin/bash
#<<<<<<< HEAD

regex=".txt?$"

if [[ $1 =~ $regex ]]; then
    mas_larga=""
    mas_corta=""
    mas_larga_len=0
    mas_corta_len=999999999
    total_letras=0
    palabras=0

    # Utilizamos un bucle while para leer cada palabra del archivo
    while read -r palabra; do
        len="${#palabra}"
        total_letras=$((total_letras + len))
        palabras=$((palabras + 1))

        # Cambiamos las comparaciones para evitar errores sintácticos
        if ((len > mas_larga_len)); then
            mas_larga_len=$len
            mas_larga=$palabra
        fi

        if ((len < mas_corta_len)); then
            mas_corta_len=$len
            mas_corta=$palabra
        fi
    done < "$1"

    # Añadimos una comprobación para evitar división por cero
    if ((palabras > 0)); then
        promedio=$((total_letras / palabras))

        echo "La palabra más corta en $1 es: $mas_corta."
        echo "La palabra más larga en $1 es: $mas_larga."
        echo "El promedio de longitud de palabras en $1 es: $promedio."
    else
        echo "El archivo está vacío."
    fi
fi 

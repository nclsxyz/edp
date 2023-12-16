#!/bin/bash 
echo "Bienvenido al detector de emails"
direcciones=$(grep -o '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*' "$1" | sort | uniq -i)
if [[ -n "$direcciones" ]]; then
	echo "Se encontraron las siguientes direcciones en el archivo:"
	echo "$direcciones"
else
	echo "No se encontraron direcciones de correo electrónico".
fi


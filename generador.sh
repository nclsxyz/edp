#!/bin/bash
echo "El generador de archivos se ha activado"

INGRESO=$((RANDOM%3))
#INGRESO=$1
if [ $INGRESO == 0 ]
then
	base64 /dev/urandom | head -c 500 > file.txt
	echo "se ha creado un archivo de texto"
elif [ $INGRESO == 1 ]
then
	ffmpeg -f lavfi -i "anoisesrc=a=0.1:c=white:duration=5" out.wav 1>/dev/null 2>/dev/null
	echo "se ha creado un archivo de audio"
elif [ $INGRESO == 2 ]
then
	convert -size 100x100 xc: +noise Random noise.png
	echo "se ha creado un archivo de sonido"
fi

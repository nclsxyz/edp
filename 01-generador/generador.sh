#!/bin/bash
echo "El generador de archivos se ha activado"
mkdir -p outputs_generador/

INGRESO=$((RANDOM%2))
#INGRESO=$1
if [ $INGRESO == 0 ]
then
	base64 /dev/urandom | head -c 500 > file.txt
	echo "se ha creado un archivo de texto"
	archivo=file.txt
elif [ $INGRESO == 1 ]
then
	ffmpeg -y -f lavfi -i "anoisesrc=a=0.1:c=white:duration=5" out.wav 2> /dev/null 1> /dev/null
	echo "se ha creado un archivo de audio"
	archivo=out.wav
elif [ $INGRESO -eq 2 ]
then
	convert -size 100x100 xc: +noise Random noise.png
	echo "se ha creado un archivo de sonido"
	archivo=noise.png
fi

hash=$(md5sum $archivo | cut -d ' ' -f1)

mv $archivo outputs_generador/$hash

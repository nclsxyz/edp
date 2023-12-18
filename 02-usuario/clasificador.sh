#!/bin/bash 
echo "Bienvenido al clasificador de archivos. Aguarde mientras se procesan los archivos"
inputs="/app/inputs"

mkdir -p /app/outputs/
mkdir -p /app/outputs/txt/ 
mkdir -p /app/outputs/snd/ 
mkdir -p /app/outputs/img/ 

n_img=1
n_txt=1
n_snd=1

for i in $inputs/*
do
	FILENAME=$(basename $i)
	echo $i
       	dwnld=$(file $i) # archivos de la carpeta
	echo $dwnld
	if [[ $dwnld =~ "ASCII" ]]; then
		echo "archivo de texto"
   		mv "$i" /app/outputs/txt/
   		n_txt=$((n_txt+1))
		mv /app/outputs/txt/$FILENAME /app/outputs/txt/texto${n_txt}.txt
 	elif [[ $dwnld =~ "RIFF" ]]; then
		echo "archivo de audio"
		mv "$i" /app/outputs/snd/
        	n_snd=$((n_snd+1))
		mv /app/outputs/snd/$FILENAME /app/outputs/snd/sonido${n_snd}.wav
	elif [[ $dwnld =~ "PNG" ]]; then
		echo "archivo de imagen" 
		mv "$i" /app/outputs/img/
		n_img=$((n_img+1))
		mv /app/outputs/img/$FILENAME /app/outputs/img/imagen${n_img}.png

 	fi

echo "Archivos movidos exitosamente."
done

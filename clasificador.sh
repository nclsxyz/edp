#!/bin/bash 
echo "Bienvenido al clasificador de archivos. Aguarde mientras se procesan los archivos"
inputs=input_downloader

mkdir -p outputs/
mkdir -p outputs/txt/ 
mkdir -p outputs/snd/ 
mkdir -p outputs/img/ 

n_img=1
n_txt=1
n_snd=1

for i in $inputs/
do
       	dwnld=$(file $i) # archivos de la carpeta
	if [[ $dwnld =~ "ASCII" ]]; then
		echo "archivo de texto"
   		mv "$i" outputs/txt/ 
   		n_txt=$((n_txt+1))
   		mv outputs/txt/$i outputs/txt/texto${n_txt}.txt
 	elif [[ $dwnld =~ "RIFF" ]]; then
		echo "archivo de audio"
		mv "$i" outputs/snd/
        	n_snd=$((n_snd+1))
		mv outputs/snd/$i outputs/snd/sonido${n_snd}.wav
	 else
		echo "archivo de imagen" 
		mv "$i" outputs/img/
		n_img=$((n_img+1))
		mv outputs/img/$i outputs/img/imagen${n_img}.png

 	fi

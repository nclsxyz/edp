#!/bin/bash 
echo "Bienvenido al clasificador de archivos. Aguarde mientras se procesan los archivos"
inputs=input_downloader

mkdir -p outputs_clasificador/
mkdir -p outputs_clasificador/txt/ 
mkdir -p outputs_clasificador/snd/ 
mkdir -p outputs_clasificador/img/ 

n_img=1
n_txt=1
n_snd=1

for i in $inputs/
do
       	dwnld=$(file $i) # archivos de la carpeta
	if [[ $dwnld =~ "ASCII" ]]; then
		echo "archivo de texto"
   		mv "$i" outputs_clasificador/txt/ 
   		n_txt=$((n_txt+1))
   		mv outputs_clasificador/txt/$i outputs_clasificador/txt/${n_txt}.txt
 	elif [[ $dwnld =~ "RIFF" ]]; then
		echo "archivo de audio"
		mv "$i" outputs_clasificador/snd/
        	n_snd=$((n_snd+1))
		mv outputs_clasificador/snd/$i outputs_clasificador/snd/sonido${n_snd}.wav
	 else
		echo "archivo de imagen" 
		mv "$i" outputs_clasificador/img/
		n_img=$((n_img+1))
		mv outputs_clasificador/img/$i outputs_clasificador/img/imagen${n_img}.png

 	fi
#$cant_archivos=$(($cant_archivos-1))
echo "Archivos movidos exitosamente."
done

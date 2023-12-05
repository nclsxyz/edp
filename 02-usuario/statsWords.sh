#!/bin/bash
  
regex="/.txt?$"

if [[ $1 =~ $regex ]]; then

	mas_larga_len=0
	mas_corta_len=0
	palabras= wc -w $1
	total_letras= wc -m $1

	for i in "cat $1" do
		len=${#i}
		if [ $len > $mas_larga_len ]; then
			mas_larga_len=$len
			mas_larga=$i 
		fi
		if [ $len -le $mas_corta_len ]; then
			mas_corta_len=$len
			mas_corta=$i
		else: 
			continue

		fi
	done

	promedio=$(($total_letras/$palabras))

	echo "La palabra más corta en {$1} es: {$mas_corta}." 
	echo "La palabra más larga en {$1} es: {$mas_larga}."
	echo "El promedio de longitud de palabras en {$1} es: {$promedio}."

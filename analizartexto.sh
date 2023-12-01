#!/bin/bash
function  analizartexto {
PS3='Elija> '
echo "Hola, soy el analizador de texto. Que quiere hacer?"
select opcion in "Palindromo" "Detector de mails" "Estadisticas" "Salir"
do
 [ -z "$opcion" ] && echo "Elegir opcion valida!" && continue
 [ $REPLY == 1 ] && bash palindromeDetection.sh $1 && continue
 [ $REPLY == 2 ] && bash mailAddressDetection.sh $1 && continue
 [ $REPLY == 3 ] && bash statsWords.sh $1 && continue
 [ $REPLY == 4 ] && echo "Eligió salir!" && break

 echo "Opcion elegida: " $opcion
done

exit 0



#!/bin/bash 

PS3='Elija> '
echo "Hola, soy el menu del TP. Que quiere hacer?"
select opcion in "Clasificar Archivos" "Monitorear Sistema" "Analizar Textos" "Salir"
do
 [ -z "$opcion" ] && echo "Elegir opcion valida!" && continue
 [ $REPLY == 1 ] && bash clasificar.sh && continue
 [ $REPLY == 2 ] && bash monitor.sh && continue
 [ $REPLY == 3 ] && bash analizartexto.sh && read -p "Por favor, ingresa el nombre del archivo de texto: " archivo_de_texto
            bash analizartexto.sh "$archivo_de_texto" && continue
 [ $REPLY == 4 ] && echo "Eligió salir!" && break

 echo "Opcion elegida: " $opcion
done

exit 0

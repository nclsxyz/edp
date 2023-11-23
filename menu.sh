#!/bin/bash

PS3='Elija> '
echo "Hola, soy el menu del TP. Que quiere hacer?"
select opcion in "Clasificar Archivos" "Monitorear Sistema" "Analizar Textos" "Salir"
do
 [ -z "$opcion" ] && echo "Elegir opcion valida!" && continue
 [ $REPLY == 1 ] && bash clasificar.sh && continue
 [ $REPLY == 2 ] && echo "Eligió Monitorear el sistema!" && continue
 [ $REPLY == 3 ] && echo "Eligió analizar textos!" && continue
 [ $REPLY == 4 ] && echo "Eligió salir!" && break

 echo "Opcion elegida: " $opcion
done

exit 0

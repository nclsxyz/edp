#!/bin/bash 

PS3='Elija> '
echo "Hola, soy el menu del TP. ¿Qué desea hacer?"
select opcion in "Clasificar Archivos" "Monitorear Sistema" "Analizar Textos" "Salir"
do
    [ -z "$opcion" ] && echo "Elegir opción válida!" && continue

    if [ $REPLY -eq 1 ]; then
        bash clasificar.sh
    elif [ $REPLY -eq 2 ]; then
        bash monitor.sh
    elif [ $REPLY -eq 3 ]; then
        echo -e  "Elegiste Analizar Textos.\nRecuerde sólo ingresar archivos .txt "
	read -p "Por favor, ingresa el nombre del archivo de texto: " archivo_de_texto
	if [[ $archivo_de_texto =~ \.txt$ ]];
	then
		bash analizartexto.sh "$archivo_de_texto"
	else
		echo "$archivo_de_texto no es un archivo .txt! Intente nuevamente."
	fi
    elif [ $REPLY -eq 4 ]; then
        echo "Elegiste salir!"
        break
    else
        echo "Opción inválida."
    fi

    echo "Opción elegida: $opcion"
done

exit 0


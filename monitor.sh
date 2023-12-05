#!/bin/bash

# Obtener la fecha y hora actual para el nombre del archivo de informe
timestamp=$(date +"%d_%m_%Y:%H_%M_%S")
informe="outputs/report_$timestamp.txt"

# Obtener el uso de CPU
uso_cpu=$(top -b -n 1 | awk '/%Cpu/{print $2}')

# Obtener el uso de RAM
uso_ram=$(free -m)

# Obtener el número de procesos en ejecución
num_procesos=$(ps aux | wc -l)

# Obtener el espacio libre en el disco
espacio_libre=$(df -h /)

# Crear el informe con los datos recopilados
echo "Uso de CPU: $uso_cpu%" > "$informe"
echo "Uso de RAM: $uso_ram MB" >> "$informe"
echo "Número de procesos en ejecución: $num_procesos" >> "$informe"
echo "Espacio libre en el disco: $espacio_libre" >> "$informe"

echo "Informe generado y guardado en: $informe"

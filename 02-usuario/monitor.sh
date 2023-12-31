#!/bin/bash

# Directorio donde se guardará el informe
directorio_informe="/app/outputs"

# Verificar si el directorio existe, sino, crearlo
if [ ! -d "$directorio_informe" ]; then
    mkdir "$directorio_informe"
fi

# Obtener la fecha y hora actual para el nombre del archivo de informe
timestamp=$(date +"%d_%m_%Y:%H_%M_%S")
informe="/app/outputs/report_$timestamp.txt"

# Obtener el uso de CPU
uso_cpu=$(top -b -n 1 | awk '/%Cpu/{print $2}')
echo "Uso de CPU: $uso_cpu%"

# Obtener el uso de RAM
uso_ram=$(free --mega | awk '/Mem/{print $3}')
echo "Uso de RAM: $uso_ram MB"

# Obtener el número de procesos en ejecución
num_procesos=$(ps aux | wc -l)
echo "Número de procesos en ejecución: $num_procesos"

# Obtener el espacio libre en el disco
espacio_libre=$(df -h / | awk 'NR==2 {print $4}')
echo "Espacio libre en el disco: $espacio_libre"

# Crear el informe con los datos recopilados
echo "Uso de CPU: $uso_cpu%" > "$informe"
echo "Uso de RAM: $uso_ram MB" >> "$informe"
echo "Número de procesos en ejecución: $num_procesos" >> "$informe"
echo "Espacio libre en el disco: $espacio_libre" >> "$informe"

echo "Informe generado y guardado en: $informe"

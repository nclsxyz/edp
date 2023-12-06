#!/bin/bash
#########
PROCESOS=$(ps aux | wc -l)
echo "Reporte de procesos:
Se están ejecutando $PROCESOS procesos."
MEMORIA=$(free -h)
echo "Reporte de uso de memoria:
$MEMORIA"
DISCO=$(df -h /)
echo "Reporte del uso del disco duro:
$MEMORIA"
exit 0



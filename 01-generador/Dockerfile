FROM alpine:latest

#copia ese contenedor del lado del host adentro del contenedor
ADD ["opt/", "/opt/" ]
ADD ["opt/", "/opt/" ] 
#configurar e instalar cron para buscar y ejecutar el script de manera periódica
#todo lo ejecuta como superusuario y no es necesario usar sudo
RUN apt-get update
RUN apt-get install -y cron
RUN crontab /etc/cron.d/generador

#el nombre de la ruta del cron debe estar adentro del contenedor
#el contenedor del usuario tiene que llamar directamente al script del menu
ENTRYPOINT ["cron", "-f"]

#ENTRYPOINT ["/opt/src/generador.sh"]




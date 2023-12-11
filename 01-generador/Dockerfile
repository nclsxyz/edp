FROM ubuntu:latest
MAINTAINER Nicolás, Julieta y Manuel

COPY generador.sh /generador.sh
#ADD generador.sh /generador.sh
RUN chmod u+x generador.sh
RUN [ "/bin/bash"  ]
#copia ese contenedor del lado del host adentro del contenedor
# ADD [ "/opt/", "/opt/" ] 
#configurar e instalar cron para buscar y ejecutar el script de manera periódica
#todo lo ejecuta como superusuario y no es necesario usar sudo
RUN apt-get update
RUN apt-get install -y cron
RUN apt-get clean
#RUN crontab /etc/cron.d/generador
RUN crontab -l | { cat; echo "* * * * * bash generador.sh"; } | crontab -

#el nombre de la ruta del cron debe estar adentro del contenedor
#el contenedor del usuario tiene que llamar directamente al script del menu
#ENTRYPOINT ["cron", "-f"]

#ENTRYPOINT ["/opt/src/generador.sh"]




FROM ubuntu:latest
MAINTAINER Nicolás, Julieta y Manuel

COPY generador.sh /generador.sh
#esto debe ser un copy o un add??
#ADD generador.sh /generador.sh
RUN chmod u+x generador.sh
#esto es para que el contenedor arranque con una terminal
#copia ese contenedor del lado del host adentro del contenedor
#sì, pero no estoy seguro
# ADD [ "/opt/", "/opt/" ]
 

#todo lo ejecuta como superusuario y no es necesario usar sudo
RUN apt-get update
RUN apt install vim -y
RUN apt install file -y
RUN apt install ffmpeg -y
RUN apt install imagemagick-6.q16 -y
RUN apt-get install -y cron && cron
RUN apt-get clean

RUN [ "/bin/bash" ]

RUN touch /etc/cron.d/cronfile && echo "* * * * * root bash generador.sh" >> /etc/cron.d/cronfile
RUN chmod u+x /etc/cron.d/cronfile
RUN crontab /etc/cron.d/cronfile

#el nombre de la ruta del cron debe estar adentro del contenedor
#el contenedor del usuario tiene que llamar directamente al script del menu
#ENTRYPOINT ["cron", "-n"]

#ENTRYPOINT ["/opt/src/generador.sh"]




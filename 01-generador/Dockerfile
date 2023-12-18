FROM ubuntu:latest
MAINTAINER Nicolás, Julieta y Manuel

#COPY generador.sh /generador.sh
#esto debe ser un copy o un add??
ADD generador.sh /generador.sh
RUN chmod u+x generador.sh
#esto es para que el contenedor arranque con una terminal
#copia ese contenedor del lado del host adentro del contenedor
#sì, pero no estoy seguro
ADD [ "/tmp/outputs/", "$(pwd)/outputs/" ]
#ADD [ "etc/", "etc/" ]

 

#todo lo ejecuta como superusuario y no es necesario usar sudo
RUN apt-get update
RUN apt install vim -y
RUN apt install file -y
RUN apt install ffmpeg -y --fix-missing
RUN apt install imagemagick-6.q16 -y
RUN apt-get install -y cron 
RUN apt-get clean

RUN [ "/bin/bash" ]

RUN touch /etc/cron.d/cronfile && echo "* * * * * root generador.sh" >> /etc/cron.d/cronfile
RUN chmod u+x /etc/cron.d/cronfile
RUN crontab /etc/cron.d/cronfile

#el nombre de la ruta del cron debe estar adentro del contenedor
#el contenedor del usuario tiene que llamar directamente al script del menu
#ENTRYPOINT ["cron", "-f"]

ENTRYPOINT ["bash,","generador.sh"]
ENTRYPOINT ["cron", "-f"]
#docker run -it -v $(pwd)/../01-generador/outputs:/app/inputs



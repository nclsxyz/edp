FROM ubuntu:latest
MAINTAINER Nicolás, Julieta y Manuel

COPY generador.sh /generador.sh
#esto debe ser un copy o un add??
#ADD generador.sh /generador.sh
RUN chmod u+x generador.sh
#esto es para que el contenedor arranque con una terminal
RUN [ "/bin/bash"  ]
#copia ese contenedor del lado del host adentro del contenedor
#sì, pero no estoy seguro
# ADD [ "/opt/", "/opt/" ]
#no instala vim?
#RUN apt install vim
 
#configurar e instalar cron para buscar y ejecutar el script de manera periódica
#todo lo ejecuta como superusuario y no es necesario usar sudo
RUN apt-get update
RUN apt install vim -y
RUN apt install file -y
RUN apt install ffmpeg -y
RUN apt install imagemagick-6.q16 -y
#RUN apt install convert -y

RUN apt-get install -y cron
RUN apt-get clean
#RUN crontab /etc/cron.d/generador
#esto no logrè que funcione todavía 
RUN crontab -l | { cat; echo "* * * * * bash generador.sh"; } | crontab -

#el nombre de la ruta del cron debe estar adentro del contenedor
#el contenedor del usuario tiene que llamar directamente al script del menu
#ENTRYPOINT ["cron", "-f"]

#ENTRYPOINT ["/opt/src/generador.sh"]




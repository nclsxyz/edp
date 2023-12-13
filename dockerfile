FROM ubuntu:latest
LABEL maintainer="Nicolás, Julieta y Manuel"

COPY generador.sh /generador.sh
RUN chmod +x /generador.sh

# Instala las dependencias necesarias
RUN apt-get update && \
    apt-get install -y vim file ffmpeg imagemagick-6.q16 cron && \
    apt-get clean

# Programa el cronjob
RUN echo "* * * * * /bin/bash /generador.sh >> /var/log/generador.log 2>&1" > /etc/cron.d/generador-cron && \
    chmod 0644 /etc/cron.d/generador-cron && \
    crontab /etc/cron.d/generador-cron && \
    touch /var/log/generador.log

# Configura el ENTRYPOINT para ejecutar cron en primer plano
ENTRYPOINT ["cron", "-f"]

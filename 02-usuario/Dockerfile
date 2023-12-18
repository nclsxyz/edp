FROM ubuntu:latest
MAINTAINER Nicolás, Julieta y Manuel

RUN apt-get update
RUN apt install file -y
RUN apt install vim -y
RUN apt-get clean

ADD menu.sh /menu.sh
ADD analizartexto.sh /analizartexto.sh
ADD clasificador.sh /clasificador.sh
ADD monitor.sh /monitor.sh
ADD mailAddressDetection.sh /mailAddressDetection.sh
ADD palindromeDetection.sh /palindromeDetection.sh
ADD procesos.sh /procesos.sh
ADD statsWords.sh /statsWords.sh
RUN [ "/bin/bash" ]

ENTRYPOINT [ "bash", "menu.sh" ]




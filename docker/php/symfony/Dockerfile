FROM php:8.3-fpm

ARG WORKDIR
WORKDIR ${WORKDIR}

RUN apt-get -y update
RUN apt-get -y install git unzip vim rsync

RUN git config --global user.email "m3rl1n1k@gmail.com"
RUN git config --global user.name "m3rl1n1k"

ENV TERM xterm-256color

RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

ENTRYPOINT /bin/bash ${WORKDIR}/docker/php/symfony/symfony-installer.sh

RUN chmod 754 -R ${WORKDIR}

CMD php-fpm
EXPOSE 9000

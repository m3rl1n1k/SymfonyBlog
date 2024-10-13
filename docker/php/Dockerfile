FROM php:8.3-fpm

ARG WORKDIR
WORKDIR ${WORKDIR}

RUN apt-get -y update
RUN apt-get -y install git unzip vim rsync

RUN apt-get -y install libpq-dev
RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql
RUN docker-php-ext-install pdo 

RUN pecl install xdebug && docker-php-ext-enable xdebug;
COPY ./docker/php/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

ENV TERM xterm-256color

RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

CMD php-fpm

EXPOSE 9000
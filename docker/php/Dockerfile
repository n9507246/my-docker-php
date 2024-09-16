FROM php:8.1-apache


RUN apt-get update && apt-get install -y \
        libicu-dev \
        libxml2-dev 

# Install xdebug
RUN pecl install xdebug-3.1.5 \
        && docker-php-ext-enable xdebug 

# instal DB
RUN docker-php-ext-install mysqli

COPY xdebug.ini /usr/local/etc/php/conf.d/


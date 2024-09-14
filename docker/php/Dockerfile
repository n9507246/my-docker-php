FROM php:8.1-apache

# Устанавливаем зависимости и Xdebug
RUN apt-get update && apt-get install -y \
        libicu-dev \
        libxml2-dev \
        && pecl install xdebug-3.1.5 \
        && docker-php-ext-enable xdebug

# Опционально: Настройка Xdebug
COPY xdebug.ini /usr/local/etc/php/conf.d/

# Остальные команды

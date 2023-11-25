FROM php:apache

RUN a2enmod rewrite

RUN apt-get update \
    && apt-get install -y \
        git \
        unzip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

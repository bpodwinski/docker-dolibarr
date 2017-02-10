FROM php:5.6-apache
MAINTAINER Benoit Podwinski

ENV VERSION 4.0.4
ENV PHP_TIMEZONE UTC
ENV PHP_MEMORY_LIMIT 256M
ENV MAX_UPLOAD 128M

RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libldap2-dev libpq-dev \
	&& rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd \
	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ \
        && docker-php-ext-install ldap \
        && docker-php-ext-install mysqli \
        && docker-php-ext-install pgsql \
        && apt-get purge -y libpng12-dev libjpeg-dev libldap2-dev

COPY php.ini /usr/local/etc/php/

RUN cd /tmp \
    && curl "https://codeload.github.com/Dolibarr/dolibarr/tar.gz/${VERSION}" -o dolibarr.tar.gz \
    && tar -xzf dolibarr.tar.gz \
    && cp -R dolibarr-$VERSION/htdocs/. /var/www/html \
    && rm -R dolibarr-$VERSION \
    && rm dolibarr.tar.gz

RUN chmod -R 777 /var/www/html/conf \ 
    && chmod -R 777 /var/www/html/documents \
    && chown -R www-data:www-data /var/www/html

VOLUME /var/www/html/conf
VOLUME /var/www/html/documents

EXPOSE 80
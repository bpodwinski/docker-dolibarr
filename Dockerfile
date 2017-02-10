FROM php:5.6-apache
MAINTAINER Benoit Podwinski

ENV VERSION 4.0.4
ENV PHP_TIMEZONE UTC
ENV PHP_MEMORY_LIMIT 256M
ENV MAX_UPLOAD 128M

RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libldap2-dev \
	&& rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd \
	&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ \
        && docker-php-ext-install ldap \
        && docker-php-ext-install mysqli \
        && apt-get purge -y libpng12-dev libjpeg-dev libldap2-dev \
        # Environments variable
        sed -i "s|;*date.timezone =.*|date.timezone = ${PHP_TIMEZONE}|i" /etc/php5/php.ini && \
        sed -i "s|;*memory_limit =.*|memory_limit = ${PHP_MEMORY_LIMIT}|i" /etc/php5/php.ini && \
        sed -i "s|;*upload_max_filesize =.*|upload_max_filesize = ${MAX_UPLOAD}|i" /etc/php5/php.ini

RUN cd /tmp \
    && curl "https://codeload.github.com/Dolibarr/dolibarr/tar.gz/${VERSION}" -o dolibarr.tar.gz \
    && tar -xzf dolibarr.tar.gz \
    && cp -R dolibarr-$VERSION/htdocs/. /var/www/html \
    && rm -R dolibarr-$VERSION \
    && rm dolibarr.tar.gz

RUN mkdir /var/www/html/documents \
	&& chown -hR www-data:www-data /var/www/html

WORKDIR /var/www/html

VOLUME /var/www/html/conf
VOLUME /var/www/html/documents

EXPOSE 80
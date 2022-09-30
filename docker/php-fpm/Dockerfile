FROM php:7.4-apache

RUN pecl install redis-5.1.1 \
    && pecl install xdebug-3.1.5 \
    && docker-php-ext-enable redis xdebug

COPY ./apache2/sites-available/* /etc/apache2/sites-available/

COPY ./ssl/certs/* /etc/ssl/certs/

COPY ./ssl/private/* /etc/ssl/private/

COPY ./php.ini /usr/local/etc/php/

COPY ./docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/

RUN a2enmod ssl rewrite && a2ensite default-ssl
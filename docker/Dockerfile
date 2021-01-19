ARG WEB_PHP_VERSION=latest
FROM php:${WEB_PHP_VERSION}-apache

ARG WEB_ENTRYPOINT

RUN apt-get update && \
    apt-get install -y ssl-cert && \
    a2enmod ssl \
            rewrite && \
    a2ensite default-ssl.conf && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ADD ./scripts /usr/local/sbin

WORKDIR /var/www

ENTRYPOINT ["entrypoint-wrapper.sh"]

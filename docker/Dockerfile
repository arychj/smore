FROM php:7.4-apache

ARG REDCAP_VERSION
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD

RUN docker-php-ext-install mysqli

COPY ./redcap$REDCAP_VERSION/redcap /var/www/html/

RUN    sed -i "s/your_mysql_host_name/db/g" /var/www/html/database.php \
    && sed -i "s/your_mysql_db_name/$MYSQL_DATABASE/g" /var/www/html/database.php \
    && sed -i "s/your_mysql_db_username/$MYSQL_USER/g" /var/www/html/database.php \
    && sed -i "s/your_mysql_db_password/$MYSQL_PASSWORD/g" /var/www/html/database.php \
    && sed -i "s/\$salt = '';/\$salt = '`openssl rand -hex 8`';/g" /var/www/html/database.php



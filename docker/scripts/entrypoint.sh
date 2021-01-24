#!/bin/bash

APP_DIR=/var/www
APP_GROUP=www-data
OWD=`pwd`

# update composer dependencies
cd $APP_DIR
composer install
php bin/console doctrine:schema:update --force
npm install
npm run dev

DIRS=( \
    "${APP_DIR}/var/cache" \
)

for dir in ${DIRS[@]}; do
  echo $DIR
    mkdir --parents $dir
    chmod 775 $dir
    chgrp $APP_GROUP $dir
done

cd $OWD
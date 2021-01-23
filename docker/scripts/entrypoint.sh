#!/bin/bash

APP_DIR=/var/www
APP_GROUP=www-data
OWD=`pwd`

# update composer dependencies
cd $APP_DIR
composer install
npm install
npm run watch

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
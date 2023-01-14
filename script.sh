#!/bin/bsh

docker-compose up -d

cd src1
composer install 
npm run build
php artisan key:generate

cd ..

cd src2
composer install 
npm run build
php artisan key:generate

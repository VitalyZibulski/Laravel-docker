FROM php:7.4-fpm

WORKDIR /var/www

RUN apt-get update \
&& apt-get install -yqq zlib1g-dev libzip-dev unzip \
&& docker-php-ext-install pdo pdo_mysql zip \
&& rm -rf /var/lib/apt/lists/* \
&& curl -sS https://getcomposer.org/installer | php -- \
   --install-dir=/usr/bin --filename=composer

RUN chown -R www:www-data /var/www/storage
RUN chmod -R ug+w /var/www/storage

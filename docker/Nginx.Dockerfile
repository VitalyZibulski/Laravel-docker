FROM nginx

ADD docker/conf/vhost.conf /etc/nginx/conf.d/default.conf
WORKDIR /var/www

RUN chown -R www:www-data /var/www/storage
RUN chmod -R ug+w /var/www/storage

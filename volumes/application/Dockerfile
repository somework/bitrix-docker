FROM debian:jessie

MAINTAINER Igor Pinchuk <i.pinchuk.work@gmail.com>

WORKDIR /var/www/site

# ADD http://www.1c-bitrix.ru/download/scripts/bitrixsetup.php /var/www/site
# ADD http://www.1c-bitrix.ru/download/files/scripts/bitrix_server_test.php /var/www/site

VOLUME /var/www/site

RUN chown -R www-data:www-data /var/www/site && chmod -R 775 /var/www/site

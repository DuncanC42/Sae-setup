FROM --platform=linux/amd64 php:8.2-apache

RUN apt-get update \
    &&  apt-get install -y --no-install-recommends \
        apt-utils git libicu-dev g++ libpng-dev libxml2-dev libzip-dev libonig-dev libxslt-dev unzip wget \
        apt-transport-https lsb-release ca-certificates

RUN curl -sS https://getcomposer.org/installer | php -- \
    &&  mv composer.phar /usr/local/bin/composer

RUN curl -sS https://get.symfony.com/cli/installer | bash \
    &&  mv /root/.symfony5/bin/symfony /usr/local/bin

RUN docker-php-ext-configure intl && docker-php-ext-install pdo pdo_mysql mbstring zip dom gd xsl intl


# À la fin de votre Dockerfile
#CMD ["symfony", "serve", "--allow-all-ip", "-d"]

# Ajout de l'entrypoint
#COPY ./entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]

WORKDIR /var/www/html/

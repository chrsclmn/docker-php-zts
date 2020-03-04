FROM php:zts
RUN apt-get update && apt-get -y install wget
RUN docker-php-ext-install mysqli pdo_mysql
RUN pecl install parallel-1.1.3 && docker-php-ext-enable parallel
RUN pear channel-update pear.php.net && pear install DB-1.9.2 HTTP_Request2-2.3.0

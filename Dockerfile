FROM php:7.3-apache

# Some basic dependencies
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
    apt-utils \
    nano \
    curl \
    sudo \
    msmtp \
    libxml2-dev \
    libonig-dev \
    zlib1g-dev \
    libzip-dev \
    unzip \
    libpng-dev

# Some php extensions, just in case
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install calendar
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install zip
RUN docker-php-ext-install gd

# Cleaning up
RUN rm -rf /var/lib/apt/lists/*

# Set the sendmail path to the smtp client
RUN echo 'sendmail_path = /usr/bin/msmtp -t' >> $PHP_INI_DIR/php.ini

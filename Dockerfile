# Dockerfile
FROM php:8.2-apache

#RUN apt-get update && \
# apt-get install -y libxml2-dev && \
# docker-php-ext-install soap

#RUN docker-php-ext-install mysqli

ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Enable apache mods.
#RUN a2enmod php7.2
RUN a2enmod rewrite
RUN a2enmod headers
RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod ssl
RUN a2enmod proxy_wstunnel
RUN apt-get update -y

# For spotweb
#RUN apt-get install -y --no-install-recommends \
#    build-essential \
#    zlib1g-dev \
#    libzip-dev \
#    gettext \
#    libpng-dev \
#    libwebp-dev \
#    libfreetype6-dev \
#    libcurl4 \
#    libcurl4-openssl-dev \
#    libxml2-dev \
#    libjpeg62-turbo \
#    libjpeg62-turbo-dev 

     
#RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp
#RUN docker-php-ext-configure intl
#RUN docker-php-ext-configure zip

#RUN docker-php-ext-install gd intl gettext zip pdo_mysql

RUN docker-php-ext-install mysqli

#RUN docker-php-ext-install xmlrpc
#RUN docker-php-ext-install xmlwriter


#zlib gd openssl
#curl dom gettext mbstring xml zip zlib gd openssl

#RUN apt update
#RUN apt install -y php-common
#RUN phpenmod curl
#RUN phpenmod dom
#RUN phpenmod gettext
#RUN phpenmod mbstring
#RUN phpenmod xml
#RUN phpenmod zip
#RUN phpenmod zlib
#RUN phpenmod gd
#RUN phpenmod openssl
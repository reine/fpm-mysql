FROM phpdockerio/php73-fpm:latest

# Set on-build env values
ARG buildtime_workdir="/var/www/html"
ENV APP_WORKDIR=${buildtime_workdir}

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install php7.3-mysql php7.3-gd php-imagick php7.3-imap php7.3-intl \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Set working directory
WORKDIR ${APP_WORKDIR}

# Open port
EXPOSE 9000

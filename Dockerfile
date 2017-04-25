FROM ubuntu

RUN  apt-get update && \
     apt-get install software-properties-common -y && \
     add-apt-repository ppa:ondrej/php && \
     apt-get update && \
     apt-get -y --no-install-recommends --allow-unauthenticated install  \
        php-redis \
        php-imagick \
        php-zmq \
        php-zip \
        php7.1 \
        php7.1-cli \
        php7.1-fpm \
        php7.1-intl \
        php7.1-bcmath \
        php7.1-bz2 \
        php7.1-pgsql \
        php7.1-mbstring \
        php7.1-xmlrpc \
        php7.1-gd && \
    apt-get -y -f purge  software-properties-common \
    && apt-get -y autoremove && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

COPY ./php-overrides.ini /etc/php/7.1/cli/conf.d/90-overrides.ini
COPY ./php-overrides.ini /etc/php/7.1/fmp/conf.d/90-overrides.ini

COPY docker-php-entrypoint /usr/local/bin/

ENTRYPOINT ["docker-php-entrypoint"]

EXPOSE 9000

CMD ["php-fpm"]
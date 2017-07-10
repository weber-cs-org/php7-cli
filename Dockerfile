FROM alpine:edge
MAINTAINER Don B. Stringham <me@donbstringham.us>

# Install PHP packages
RUN apk update && \
        #    apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community add \
        apk --no-cache --repository=http://dl-4.alpinelinux.org/alpine/edge/testing add \
        ca-certificates \
        curl \
        unzip \
        php7 \
        php7-xml \
        php7-zip \
        php7-xmlreader \
        php7-zlib \
        php7-opcache \
        php7-mcrypt \
        php7-openssl \
        php7-curl \
        php7-json \
        php7-dom \
        php7-phar \
        php7-mbstring \
        php7-pdo \
        php7-pdo_sqlite \
        php7-simplexml \
        php7-tokenizer \
        php7-xmlwriter && \
        rm -fr /var/cache/apk/*

# Install composer global bin
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

EXPOSE 8080
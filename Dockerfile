FROM debian:sid
MAINTAINER rdisanto
RUN apt-get update \
    && apt-get install -y curl jq wget zip git openssh-client python-cryptography python-openssl procps python-boto sudo make rsync npm php7.1-cli \
    && npm install -g n \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

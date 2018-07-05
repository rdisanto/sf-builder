FROM debian:sid
MAINTAINER rdisanto
RUN apt-get update \
    && apt-get install -y curl jq wget zip git openssh-client python-cryptography python-openssl procps python-boto sudo make rsync npm php7.1-cli 
RUN apt-get install -y php7.1-mbstring php7.1-xml php7.1-zip php7.1-curl php7.1-pgsql php7.1-xmlrpc php7.1-amqp php7.1-bcmath 
RUN npm install -g npm@5.6 && npm install -g n \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

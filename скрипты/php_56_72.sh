#! /bin/bash
apt-get install -y ca-certificates apt-transport-https
wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
apt-get update
apt-get upgrade
apt-get purge php5*
apt-get --purge autoremove
apt-get install -y php7.2 \
gettext php-mysql php-pear php-php-gettext \
php7.2 php7.2-bcmath php7.2-bz2 php7.2-cli \
php7.2-common php7.2-curl php7.2-dba php7.2-fpm \
php7.2-gd php7.2-json php7.2-mbstring php7.2-mcrypt \
php7.2-mysql php7.2-opcache php7.2-readline \
php7.2-soap php7.2-tidy php7.2-xml php7.2-zip
a2enmod proxy_fcgi setenvif
a2enconf php7.2-fpm
service apache2 restart
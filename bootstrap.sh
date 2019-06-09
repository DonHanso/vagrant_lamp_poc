# Update Packages
apt-get update
# Upgrade Packages
apt-get upgrade

# Basic Linux Stuff
apt-get install -y git

# Apache
apt-get install -y apache2

# Enable Apache Mods
a2enmod rewrite

#Add Onrej PPA Repo
apt-add-repository ppa:ondrej/php
apt-get update

# Install PHP
apt-get install -y php7.3

# PHP Apache Mod
apt-get install -y libapache2-mod-php7.3

# Restart Apache
service apache2 restart

# PHP Mods
apt-get install -y php7.3-common
apt-get install -y php7.3-zip

apt-get install -y php7.0-mcrypt
apt-get upgrade

# Set MySQL Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt-get install -y mysql-server

# PHP-MYSQL lib
apt-get install -y php7.3-mysql

# Restart Apache
sudo service apache2 restart
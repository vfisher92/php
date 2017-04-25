# php Docker image #

based on ubuntu

**php ext:**
* php-redis 
* php-imagick 
* php-zmq 
* php-zip 
* php-curl
* php7.1 
* php7.1-cli 
* php7.1-fpm 
* php7.1-intl 
* php7.1-bcmath 
* php7.1-bz2 
* php7.1-pgsql 
* php7.1-mbstring 
* php7.1-xmlrpc 
* php7.1-gd

**php override params:**
* short_open_tag = On
* upload_max_filesize = 10M
* post_max_size = 10M
* max_execution_time = 60
* memory_limit = 512M
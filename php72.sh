#!/bin/bash

add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install nginx php7.2-fpm -y

echo '<?php

$i=1;

while ($i <= 100000) {
    echo $i . "<br>" . PHP_EOL;
    $i++;
}
' > /var/www/html/index.php

wget https://raw.githubusercontent.com/erikfig/php-nginx/master/nginx72
mv nginx72 /etc/nginx/sites-available/default
service nginx restart

echo "=========================="
echo "PHP 7.2 com Nginx instalado, trabalhe em /var/www/html"

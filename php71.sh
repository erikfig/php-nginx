#!/bin/bash

add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install nginx php7.1-fpm -y

echo '<?php

$i=1;

while ($i <= 100000) {
    echo $i . "<br>" . PHP_EOL;
    $i++;
}
' > /var/www/html/index.php

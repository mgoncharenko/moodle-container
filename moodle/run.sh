#!/bin/bash

echo Copying config...
cp -v /mnt/config/* /var/www/html

echo Strating web server...
/usr/local/bin/apache2-foreground
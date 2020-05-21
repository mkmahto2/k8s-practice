#!/bin/bash

if [ "$x" == "app1" ]
then
        cp -rf /myapps/app1/* /var/www/html/
        httpd -DFOREGROUND

elif [ "$x" == "app2" ]
then
        cp -rf /myapps/app1/* /var/www/html/
        httpd -DFOREGROUND
else
        echo "You have not selected correct env for app1 or app2" > /var/www/html/index.html
        httpd -DFOREGROUND
fi

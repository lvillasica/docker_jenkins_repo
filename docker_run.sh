#!/bin/bash

docker run --name apache_repo -v /var/www/debian:/var/www/debian -p 81:80 -d musashi/apache_repo

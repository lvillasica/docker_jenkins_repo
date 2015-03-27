#!/bin/bash

docker run --name apache_repo -v /var/www:/var/www -p 81:80 -d musashi/apache_repo

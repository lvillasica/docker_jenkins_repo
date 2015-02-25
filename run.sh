#!/bin/bash

service apache2 restart
tail -f /var/log/apache2/access.log

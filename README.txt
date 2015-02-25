BUILD:

$ docker build -t musashi/apache_repo .

RUN

$ ./docker_run.sh

Note:

After initial run, do this:

# Make sure nsenter is installed 
$ docker-enter apache_repo
#> htpasswd -b -c /var/www/.htpasswd musashi <password>
#> service apache2 restart
#> exit

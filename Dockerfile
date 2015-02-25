FROM ubuntu:trusty
MAINTAINER The Maintainer <maintainer@musashi.ph>

RUN echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty universe' >> /etc/apt/sources.list
RUN apt-get -y update

RUN apt-get install apache2 -y
RUN mkdir /var/www/debian
ADD ./run.sh /var/lib/run.sh
RUN chmod 777 /var/lib/run.sh
ADD ./000-default.conf /etc/apache2/sites-available/000-default.conf
ADD ./htaccess /var/www/.htaccess
RUN a2enmod authz_groupfile
RUN sudo apt-get install apache2-utils -y

EXPOSE 80

VOLUME ["/var/www/debian"]
ENTRYPOINT ["/var/lib/run.sh"]

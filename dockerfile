FROM debian:8.7

MAINTAINER Gerónimo Miguel S. "gms.cnc@gmail.com"
RUN apt-get update
RUN apt-get -y install apache2 php5 php5-mysql libapache2-mod-php5
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server-10.0
EXPOSE 80 3306
CMD service apache2 start && service mysql start && /bin/bash

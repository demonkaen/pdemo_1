# pdemo_1

Cargar el fichero pipeline en jenkins, esto correra todo de forma automatica, hasta el despligue de los 2 ambientes (QA - Prod).
En el caso del playbook para ansible, es necesario que se configure previamente los host en ansible (tag: webservers) y corre sin problemas en equipos basados en Debian > 8.x.

Paqueteria base:
apache2
php5 php5-mysql libapache-mod-php5
MariaDB10.x o Mysql-server

# pdemo_1
Aplicacion PHP v5.

La aplicación registra productos y modifica su stock, no cuenta con sus ficheros para pruebas automatizadas.

Copiar el contenido del fichero "pipeline" dentro de jenkins y ejecutar "build now" en un proyecto o pipeline nuevo, esto correra todos los pasos necesarios correspondientes hasta el despligue de los 2 ambientes: un ambiente para QA (un contenedor docker), y un ambiente para Production (un host virtual, playbook configurado para debian, posiblemente en ubuntu o similares tendrian que verificar si los paquetes mencionados al final existen en sus repositorios).
En el caso del playbook para ansible, es necesario que se configure previamente los host en ansible (tag: webservers) y corre sin problemas en equipos basados en Debian 8.x.

Paqueteria base:
* GIT (en el caso de Ansible).
* apache2.
* php5.
* php5-mysql.
* libapache-mod-php5.
* MariaDB10.x o Mysql-server.

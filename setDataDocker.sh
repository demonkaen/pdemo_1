#!/bin/bash
docker exec -i deployQA rm -rf /var/www/html/*
docker cp ./app.tar deployQA:/var/www/html/
docker exec -i deployQA tar -xvf /var/www/html/app.tar -C /var/www/html/
docker exec -i deployQA chmod 755 -R /var/www/html/
docker exec -i deployQA chown www-data:www-data -R /var/www/html/
docker exec -i deployQA mysql -u root -h localhost <schema.sql 

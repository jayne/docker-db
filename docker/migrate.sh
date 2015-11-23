#!/bin/bash

sleep 10

mysql -uroot -ppassword -e "CREATE DATABASE testdb"


HOST=$(docker-machine ip docker-db)

cd /home/docker/repos/docker-db/flywayFiles/conf
touch flyway.properties
echo "flyway.url=jdbc:mysql://$HOST:3306/testdb" >> flyway.properties
echo "flyway.user=root" >> flyway.properties
echo "flyway.password=password" >> flyway.properties
sh /home/docker/repos/docker-db/flywayFiles/./flyway migrate


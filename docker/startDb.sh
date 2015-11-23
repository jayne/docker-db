
#!/bin/bash


docker rm -f $(docker ps -a -q)
docker build -t jayne/db-migrations .  
docker run --name testdbcontainer -e MYSQL_ROOT_PASSWORD=password -p "3306:3306" -d jayne/db-migrations  





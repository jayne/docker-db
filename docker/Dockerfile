FROM mysql:5.5
RUN apt-get update

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get -y install git

RUN apt-get -y install openjdk-7-jre

RUN mkdir -p /home/docker/repos
RUN cd /home/docker/repos && git clone https://github.com/jayne/docker-db.git 

COPY init_db.sh /tmp/init_db.sh
COPY migrate.sh /tmp/migrate.sh


ENTRYPOINT ["/tmp/init_db.sh"]
CMD ["mysqld"]



EXPOSE 3306


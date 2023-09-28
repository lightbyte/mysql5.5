# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/
FROM mysql/mysql-server:5.5

RUN yum install -y tzdata && \
    yum clean all && \
    rm -rf /var/cache/yum

COPY config/user.cnf /etc/mysql/my.cnf

EXPOSE 3306

CMD ["mysqld"]
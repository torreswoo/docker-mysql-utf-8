FROM mysql:5.7

ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
ENV MYSQL_USER dev
ENV MYSQL_DATABASE abt_rails

WORKDIR /etc/mysql

ADD ./my.cnf /etc/mysql/

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh

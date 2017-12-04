FROM percona:5.7

MAINTAINER Igor Pinchuk <i.pinchuk.work@gmail.com>

ADD my.cnf /etc/mysql/conf.d/my.cnf
ADD docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["docker-entrypoint.sh"]

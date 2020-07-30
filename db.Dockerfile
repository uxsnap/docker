FROM mariadb
COPY ./dbdata/setup.sh /mysql/setup.sh
COPY ./dbdata/setup.sql /mysql/setup.sql
RUN /mysql/setup.sh
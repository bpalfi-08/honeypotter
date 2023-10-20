FROM mysql:latest

ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#RUN mysqld --initialize
COPY /files/merchandise_orders.sql /tmp/merchandise_orders.sql
#RUN mysql -p -u root -h 127.0.0.1 < /tmp/merchandise_orders.sql
#RUN rm /tmp/merchandise_orders.sql


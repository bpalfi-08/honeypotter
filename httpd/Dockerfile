FROM httpd:2.4

RUN apt-get update && apt-get install -y procps openssh-server

COPY /apache-html/ /usr/local/apache2/htdocs/

COPY /apache/apache.conf /usr/local/apache2/conf/httpd.conf

RUN mkdir /var/log/apache2

COPY /honey_gen/connection_info /network_data

ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 80 22

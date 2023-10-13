FROM httpd:2.4

RUN apt-get update && apt-get install -y openssh-server

COPY /apache/apache-html/ /usr/local/apache2/htdocs/

COPY /apache/apache.conf /usr/local/apache2/conf/httpd.conf

EXPOSE 80 22

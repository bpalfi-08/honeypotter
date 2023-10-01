FROM httpd:2.4

COPY /apache/apache-html/ /usr/local/apache2/htdocs/

COPY /apache/apache.conf /usr/local/apache2/conf/httpd.conf

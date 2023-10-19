FROM nginx

RUN apt-get update && apt-get install -y openssh-server

COPY /html /usr/share/nginx/html
COPY /default.conf /etc/nginx/conf.d/

EXPOSE 80 22

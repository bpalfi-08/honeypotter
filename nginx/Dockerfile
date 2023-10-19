FROM nginx

RUN apt-get update && apt-get install -y openssh-server

COPY /html /usr/share/nginx/html

EXPOSE 80 22

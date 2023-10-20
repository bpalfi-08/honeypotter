FROM nginx

RUN apt-get update && apt-get install -y openssh-server

COPY /html /usr/share/nginx/html
COPY /default.conf /etc/nginx/conf.d/

COPY /honey_gen/connection_info /network_data

ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 80 22

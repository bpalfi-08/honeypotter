FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y openssh-server

ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY /honey_gen/connection_info /network_data

ENTRYPOINT ["tail", "-f", "/dev/null"]

EXPOSE 80 22

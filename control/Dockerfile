FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y openssh-server

ENTRYPOINT ["tail", "-f", "/dev/null"]

EXPOSE 80 22

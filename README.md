# honeypotter
HACS200 Honeypot Project - Fall 2023

## Set up Docker network
Run `docker network create honeypot-network` to create a network to bridge all the containers together (I think this is a bit insecure but I really don't want to figure out the proper iptables rules right now).

## Running Apache and ACES-MITM
First, we build the docker container; this can be done with `docker build -t mitm httpd/` We can run an instance of this container with
```bash
docker run -dp 127.0.0.1:3000:80 --net honeypot-network --name mitm-container mitm
```
which creates a container called `mitm-container` and forwards port 80 of the container to port 3000 on localhost. Next, run
```bash
docker exec "mitm-container" service ssh start
```
to start the SSH service.

Navigate to the `MITM` directory and run `install.sh`. Then, run
```bash
sudo node mitm.js -n mitm-container -i $(docker inspect -f '{{.NetworkSettings.IPAddress}}' mitm-container) -p 3001 -a --auto-access-fixed 2 --container-mount-path-prefix /proc --container-mount-path-suffix root --debug
```
to start the MITM server on localhost port 3001. This doesn't do port forwarding yet.

It's worth noting that using the `/proc` file system is a bit of a hack and we probably shouldn't do this. It works though.

## Running Nginx and ACES-MITM
The process for nginx is similar to above. The following commands will build and run the nginx image.
```bash
docker build -t nginx nginx/
docker run --net honeypot-network --name nginx-container -dp 8080:80 nginx
docker exec "nginx-container" service ssh start
```

Assuming the prerequisites are already installed, we can run
```bash
sudo node mitm.js -n nginx-container -i $(docker inspect -f '{{.NetworkSettings.IPAddress}}' nginx-container) -p 3002 -a --auto-access-fixed 2 --container-mount-path-prefix /proc --container-mount-path-suffix root --debug
```
to start the MITM server on localhost port 3002.

## ElasticSearch
The following commands will build and run the ElasticSearch database.
```bash
docker build -t elastic elasticsearch/
docker run -dp 127.0.0.1:9200:9200 --net honeypot-network --name esearch -m 1GB elastic
```
Note: if the container name is changed from `esearch` then the configuration files for httpd and Apache must be updated as well

TODO: Restrict anonymous access to read-only

TODO: Pre-populate the database with the honey

TODO: Figure out networking (iptables) rules for allowing other containers to access the database

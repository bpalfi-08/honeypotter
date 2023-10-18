# honeypotter
HACS200 Honeypot Project - Fall 2023

## Running Docker and ACES-MITM
First, we build the docker container; this can be done with `docker build -t mitm httpd/` We can run an instance of this container with
```bash
docker run -dp 127.0.0.1:3000:80 --name mitm-container mitm
```
which creates a container called `mitm-container` and forwards port 80 of the container to port 3000 on localhost. Next, run
```bash
docker exec -it "mitm-container" service ssh start
```
to start the SSH service.

Navigate to the `MITM` directory and run `install.sh`. Then, run
```bash
sudo node mitm.js -n mitm-container -i $(docker inspect -f '{{.NetworkSettings.IPAddress}}' mitm-container) -p 3001 -a --auto-access-fixed 2 --container-mount-path-prefix /proc --container-mount-path-suffix root --debug
```
to start the MITM server on localhost port 3001. This doesn't do port forwarding yet.

It's worth noting that using the `/proc` file system is a bit of a hack and we probably shouldn't do this. It works though.

## ElasticSearch
The following commands will build and run the ElasticSearch database.
```bash
docker build -t elastic elasticsearch/
docker run -dp 127.0.0.1:9200:9200 --name elasticsearch -m 1GB elastic
```
TODO: Figure out how to get the SSL certificate onto the other containers

TODO: Restrict anonymous access to read-only

TODO: Pre-populate the database with the honey

TODO: Figure out networking (iptables) rules for allowing other containers to access the database

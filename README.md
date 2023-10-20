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

## Control container and ACES-MITM
Same process as above. (this is untested but should work)
```bash
docker build -t control-image control/
docker run --net honeypot-network --name control-container -dp 4000:80 control-image
docker exec "control-container" service ssh start
```
This will start a control sever on port 4000 -- the port will be open but incoming traffic will not be handled.

Assuming the prerequisites are already installed, we can run
```bash
sudo node mitm.js -n control-container -i $(docker inspect -f '{{.NetworkSettings.IPAddress}}' control-container) -p 3003 -a --auto-access-fixed 2 --container-mount-path-prefix /proc --container-mount-path-suffix root --debug
```
to start the MITM server on localhost port 3003.

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

## Honey
Code to generate fake honey files is in the honey_gen directory, and running the files (with python) creates a file in the honey_gen/files subdirectory. Automatically generated honey falls in two categories:
1. User information files: personal information of users (personal_info_gen.py) and login information with usernames and passwords (fake_logins.py). 
    * Personal information is a csv with full name, username, email, phone number, state, and zip code.
    * Login information is a csv with username, email, and password (can be hashed/salted based on parameter).
2. Connection-related information: network traffic (fake_ip_logs.py), IP table rules (fake_ip_tables.py), and labeled user login attempts (fake_connections.py). 
    * Network traffic is a text file with timestamp, source IP, a database command, protocol, and status of various connections.
    * IP table rules is a text file that includes source IP, destination IP, and protocol, an action (ACCEPT, DROP, or REJECT), and a direction.
    * Labeled user login attempts is a csv with timestamp (rows ordered in time), source IP, username, inputted password, and SUCCESS/FAILURE.

These fake honey files are either text files or csvs - they should be copied into the honey directory and renamed (potentially with different file extensions) on the honeypot server.
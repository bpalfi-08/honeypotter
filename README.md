# honeypotter
HACS200 Honeypot Project - Fall 2023

## Running Docker and ACES-MITM
First, we build the docker container; this can be done with `docker build -t mitm .` We can run an instance of this container with
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

It's worth nothing that using the `/proc` file system is a bit of a hack and we probably shouldn't do this. It works though.

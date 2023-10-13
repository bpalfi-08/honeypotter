#!/bin/bash

CONTAINER=$1
USERNAME=$2
PASSWORD=$3

docker exec "$CONTAINER" usermod -p "$(openssl passwd "$PASSWORD")" "$USERNAME"

#!/bin/bash

CONTAINER=$1
USERNAME=$2
PASSWORD=$3

crictl exec "$CONTAINER" usermod -p "$(openssl passwd "$PASSWORD")" "$USERNAME"

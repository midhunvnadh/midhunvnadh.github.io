#!/bin/sh

SERVER_IP=redsoc.io
SERVER_SSH_PORT=999

LOCAL_HOST=redsoc
PUBLIC_HOST=0.0.0.0

ID=~/.ssh/ssh_host_rsa_key

# Enable server upstream
ssh -g -N -y \
-R "$PUBLIC_HOST:80:$LOCAL_HOST:8000" \
-R "$PUBLIC_HOST:443:$LOCAL_HOST:443" \
-R "$PUBLIC_HOST:22:$LOCAL_HOST:22" \
root@$SERVER_IP -i $ID -p $SERVER_SSH_PORT

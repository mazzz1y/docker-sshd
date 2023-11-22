#!/bin/sh

set -e

if [ "$#" -ne 0 ]; then
    exec "$@"
fi

password=$(openssl rand -base64 32)

echo "root:$password" | chpasswd    
/usr/bin/ssh-keygen -A

printf "\nRoot Password: %s\n\n" "$password"
/usr/sbin/sshd -De

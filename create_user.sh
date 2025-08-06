#!/bin/bash
if [ -z "$1" ]; then
	echo "Error: No username provided"
	echo "Usage: ./create_user.sh new_username"
	exit 1
fi



USERNAME=$1
PASSWORD="ChangePW1"


if getent group dev_group >/dev/null; then
	echo "Group 'dev_group' already exists."
else	
	sudo groupadd dev_group
	echo "Group 'dev_group' created."
fi

echo "Creating user $USERNAME..."
sudo useradd -m -g dev_group -s/bin/bash "$USERNAME"

echo "$USERNAME:$PASSWORD" | sudo chpasswd
sudo chage -d 0 "$USERNAME"

echo "Here is the updated /etc/passwd:"
tail -n 5 /etc/passwd

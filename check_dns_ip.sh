#! /bin/bash

if ping -c 1 8.8.8.8 >/dev/null 2>&1; then
	echo "Connection to Google DNS is successful."
else
	echo "Unable to connect to Google DNS."
fi

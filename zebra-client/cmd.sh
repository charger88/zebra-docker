#!/bin/bash
git pull

KEYFILE=/etc/ssl/private/zebra.key
CRTFILE=/etc/ssl/private/zebra.crt

if [ ! -f $KEYFILE ]; then
	if [ ! -f $CRTFILE ]; then
		openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/CN=localhost" -keyout $KEYFILE -out $CRTFILE
	fi
fi

nginx -g "daemon off;"
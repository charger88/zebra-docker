#!/bin/bash
CONFIGFILE=/config/config.yaml
CONFIGLINK=/zebra-api/config/config.yaml
if [ -f $CONFIGFILE ]; then
	if [ -f $CONFIGLINK ]; then
		rm $CONFIGLINK
	fi
	ln -s $CONFIGFILE $CONFIGLINK
fi
go run *.go -v

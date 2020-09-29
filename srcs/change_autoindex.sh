#!/bin/bash

if [ "$(echo $AUTOINDEX)" == "on" ]; then
	cp /tmp/default_aut_off /etc/nginx/sites-available/nginx
	export AUTOINDEX="off"
else
	cp /tmp/nginx /etc/nginx/sites-available/nginx
	export AUTOINDEX="on"
fi

service nginx reload

#!/bin/sh

envsubst < /etc/krakend/krakend-config.json > /etc/krakend/krakend.json

/usr/bin/krakend run -d -c /etc/krakend/krakend.json -p 80

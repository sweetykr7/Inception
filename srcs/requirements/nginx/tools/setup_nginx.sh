#!/bin/sh
sleep 2

echo "Nginx begin!";

exec nginx -g 'daemon off;'
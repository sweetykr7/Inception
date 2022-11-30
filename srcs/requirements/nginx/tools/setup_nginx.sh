#!/bin/sh
sleep 4

echo "Nginx begin!";

exec nginx -g 'daemon off;'
#!/bin/bash

git clone git://github.com/fabx/web_page.git /usr/share/nginx/html
cd /usr/share/nginx/html
while true; do
    git pull
    sleep 10
done


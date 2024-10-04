#!/bin/bash
isExistApp="pgrep nginx"
if [[ -n $isExistApp ]]; then
systemctl stop nginx
fi

isExistApp="pgrep gunicorn"
if [[ -n $isExistApp ]]; then
systemctl stop gunicorn
fi

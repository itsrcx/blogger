#!/bin/bash
cd /home/ubuntu/blogger_app

gunicorn --workers 3 --bind 0.0.0.0:80 config.wsgi:application --daemon

#!/bin/bash
chown ubuntu:ubuntu /home/ubuntu/www
virtualenv /home/ubuntu/www/project-venv
chown ubuntu:ubuntu /home/ubuntu/www/project-venv
chown ubuntu:ubuntu /home/ubuntu/www/project-venv/*
source /home/ubuntu/www/project-venv/bin/activate
pip install -r /home/ubuntu/www/project/requirements/staging.txt

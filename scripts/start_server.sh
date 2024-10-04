#!/bin/bash
systemctl start nginx
systemctl enable nginx

systemctl start gunicorn
systemctl enable gunicorn

#!/bin/bash
systemctl start nginx
systemctl enable nginx
systemctl start php-fpm.service

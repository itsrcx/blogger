#!/bin/bash

# Navigate to the application directory
cd /home/ubuntu/app

# activating env
source .venv/bin/activate

# Run Django database migrations
python3 manage.py migrate
python3 manage.py collectstatic --noinput

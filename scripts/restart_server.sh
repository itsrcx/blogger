#!/bin/bash

# Navigate to the application directory
cd /home/ubuntu/app

# activating env
source .venv/bin/activate

if pgrep gunicorn > /dev/null; then
  echo "Soft Reloading Gunicorn..."
  pkill -HUP gunicorn  # Graceful restart of Gunicorn
else
  echo "Gunicorn is not running, starting it..."
  
  # Start Gunicorn in the background
  gunicorn --workers 3 --bind 0.0.0.0:8000 config.wsgi:application &
  
  # Wait for a few seconds to ensure Gunicorn starts properly
  sleep 2
  
  # Verify if Gunicorn started successfully
  if pgrep gunicorn > /dev/null; then
    echo "Gunicorn started successfully."
  else
    echo "Failed to start Gunicorn."
    exit 1  # Exit with an error code to indicate failure
  fi
fi
# Or for testing:
# python3 manage.py runserver 0.0.0.0:8000 &

sudo nginx -s reload

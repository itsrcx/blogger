#!/bin/bash
PORT=80
PID=$(lsof -t -i :$PORT)
if [ -n "$PID" ]; then
    echo "Killing process with PID: $PID on port $PORT"
    sudo kill $PID
fi

# above will work in case of both nginx and gunicorn
# but if we use nginx then we need to stop gunicorn too
isExistApp=$(pgrep gunicorn)
if [[ -n $isExistApp ]]; then
pkill gunicorn
fi

#!/bin/bash

# Check if the service is up by curling the health check endpoint
curl -f http://localhost:8000/ || exit 1

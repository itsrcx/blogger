#!/bin/bash

# Update package lists
sudo apt-get update -y

# Install Python3 and pip3
sudo apt-get install -y python3 python3-pip python3-venv

# Navigate to the application directory
cd /home/ubuntu/app

# creating a virtual environment
python3 -m venv .venv
source .venv/bin/activate

# Install dependencies from requirements.txt
pip install -r requirements.txt

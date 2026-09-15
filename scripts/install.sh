#!/bin/bash
set -e

cd /home/ec2-user/cicd-python-app

python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

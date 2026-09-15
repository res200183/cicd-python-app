#!/bin/bash
set -e

cd /home/ec2-user/cicd-python-app

pkill -f "python3 app.py" || true

nohup python3 app.py > app.log 2>&1 &

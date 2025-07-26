#!/bin/bash
echo "Starting app..."
cd /home/ec2-user/app
npm start > app.out.log 2> app.err.log < /dev/null &

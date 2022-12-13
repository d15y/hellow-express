#!/bin/bash

echo "START application_start"
cd /home/eadmin/app
pm2 start 'npm start' -n app
echo "END application_start"

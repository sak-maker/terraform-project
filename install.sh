#!/bin/sh
sudo apt-get update
sudo apt-get install nginx -y
sudo service nginx start
sudo service nginx enable
echo "<h1>hello iam sakshi 'welcome to my project'</h1>/var/www/html/index.html
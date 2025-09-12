#!/bin/bash
# Author: <Nahid Hasan>
# Date: 12.09.2025

apt-get update -y
apt-get install -y apache2
echo "Hello from AutoScaling Group 🚀" > /var/www/html/index.html
systemctl start apache2
systemctl enable apache2

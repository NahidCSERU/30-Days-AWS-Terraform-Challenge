#!/bin/bash
# Day-20: Connect EC2 to RDS MySQL
# Author: <Nahid Hasan>
# Date: (05/09/2025)

RDS_ENDPOINT=$1
MYSQL_USER="admin"
MYSQL_PASS="password123"

mysql -h $RDS_ENDPOINT -u $MYSQL_USER -p$MYSQL_PASS -e "SHOW DATABASES;"

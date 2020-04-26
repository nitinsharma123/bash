#!/bin/bash

apt-get -y install mysql 

service mysql start

mysqldump -h sfdevserver.co8yd.us-east-1.rds.amazonaws.com -u nitin.sharma -p test_db happy | gzip  > /root/$( date '+%Y-%m-%d_%H-%M-%S' ).sql.gz

mysql -u root -p  test_db -e "truncate table happy"


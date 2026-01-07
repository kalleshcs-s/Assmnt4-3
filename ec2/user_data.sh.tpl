#!/bin/bash
echo "${message}" > /var/www/html/index.html
yum install -y httpd
systemctl start httpd
systemctl enable httpd

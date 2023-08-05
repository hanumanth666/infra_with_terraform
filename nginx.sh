#!/bin/bash
yum update -y
sudo yum install nginx -y
systemctl start nginx
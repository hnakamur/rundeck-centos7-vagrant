#!/bin/sh
set -e
(cd /etc && sudo ln -sf ../usr/share/zoneinfo/Asia/Tokyo localtime)
sudo yum install -y epel-release
sudo yum update -y

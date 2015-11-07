#!/bin/sh
set -e

sudo yum install -y java-1.8.0-openjdk-headless

sudo rpm -Uvh http://repo.rundeck.org/latest.rpm 
sudo yum install -y rundeck 
ip_addr=`ip -4 -o a s eth1 | sed 's/.*inet \([^/]*\)\/.*/\1/'`
sudo sed -i.orig '/^grails\.serverURL=/s/localhost/'$ip_addr'/' /etc/rundeck/rundeck-config.properties
sudo systemctl start rundeckd

#!/bin/bash
sudo yum install -y vim man git wget zip unzip chronyd
sudo systemctl enable chronyd
sudo systemctl start chronyd
sudo yum update

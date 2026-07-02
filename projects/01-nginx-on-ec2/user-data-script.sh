#!/bin/bash

# EC2 user data script
# Purpose: install and start Nginx on Amazon Linux 2023
# Date: 02 July 2026
# Author: Alan Antony

dnf install -y nginx
systemctl start nginx
systemctl enable nginx

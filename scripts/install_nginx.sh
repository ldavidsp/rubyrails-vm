#!/usr/bin/env bash
apt-get update
apt-get install nginx -y
ufw allow 'Nginx HTTP'





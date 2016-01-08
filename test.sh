#!/bin/bash -e

nginx=/usr/local/nginx/sbin/nginx

# Chapter 3
cd ch3
sudo $nginx -t -p $(pwd) -c nginx/3.1-context.conf
sudo $nginx -t -p $(pwd) -c nginx/3.1-include.conf
sudo $nginx -t -p $(pwd) -c nginx/3.1-list3.1-nginx.conf
sudo $nginx -t -p $(pwd) -c nginx/3.2-list3.2-virtual_servers.conf
sudo $nginx -t -p $(pwd) -c nginx/3.2-list3.4-listen.conf
sudo $nginx -t -p $(pwd) -c nginx/3.2-list3.5-default_server.conf
sudo $nginx -t -p $(pwd) -c nginx/3.2-list3.6-access_log.conf
sudo $nginx -t -p $(pwd) -c nginx/3.2-mime_types.conf
sudo $nginx -t -p $(pwd) -c nginx/3.3-error_log.conf
sudo $nginx -t -p $(pwd) -c nginx/3.3-list3.7-nginx.conf
sudo $nginx -t -p $(pwd) -c nginx/3.4-performance_tuning.conf

# Chapter 4


# Chapter 5


# Chapter 6


# Chapter 7


# Chapter 8


# Chapter 9


# Chapter 10

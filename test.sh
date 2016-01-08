#!/bin/bash -e

nginx=/usr/local/nginx/sbin/nginx
resty=

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
cd ../ch4
sudo $nginx -t -p $(pwd) -c nginx/4.1-index_and_error_page.conf
sudo $nginx -t -p $(pwd) -c nginx/4.1-list4.1-static_server.conf
sudo $nginx -t -p $(pwd) -c nginx/4.1-list4.2-location_directive.conf
sudo $nginx -t -p $(pwd) -c nginx/4.1-list4.3-nested_location.conf
sudo $nginx -t -p $(pwd) -c nginx/4.2-basic_authentication.conf
sudo $nginx -t -p $(pwd) -c nginx/4.2-list4.4-black_list.conf
sudo $nginx -t -p $(pwd) -c nginx/4.2-list4.5-white_list.conf
sudo $nginx -t -p $(pwd) -c nginx/4.2-list4.6-restrictions.conf
sudo $nginx -t -p $(pwd) -c nginx/4.2-list4.8-limit_by_remote_addr.conf
sudo $nginx -t -p $(pwd) -c nginx/4.2-list4.9-request_limit.conf
sudo $nginx -t -p $(pwd) -c nginx/4.3-list4.10-rewrite.conf
sudo $nginx -t -p $(pwd) -c nginx/4.3-return.conf
sudo $nginx -t -p $(pwd) -c nginx/4.3-valid_referers.conf
sudo $nginx -t -p $(pwd) -c nginx/4.4-gzip_static.conf
sudo $nginx -t -p $(pwd) -c nginx/4.4-list4.11-gzip.conf

# Chapter 5
cd ../ch5
sudo $nginx -t -p $(pwd) -c nginx/nginx.conf

# Chapter 7
cd ../ch7

# Chapter 8
cd ../ch8
sudo $nginx -t -p $(pwd) -c nginx/combined-log-nginx.conf
sudo $nginx -t -p $(pwd) -c nginx/ltsv-log-nginx.conf
sudo $nginx -t -p $(pwd) -c nginx/stub_status_setting-nginx.conf
sudo $nginx -t -p $(pwd) -c nginx/tsv-log-nginx.conf

# Chapter 9
cd ../ch9
# sudo $resty -t -p $(pwd) -c nginx/...

# Chapter 10
cd ../ch10
# sudo $resty -t -p $(pwd) -c nginx/...

#!/bin/bash -ex

set -o pipefail

nginx_version="1.9.5"
openssl_version="1.0.2e"
pcre_version="8.37"
zlib_version="1.2.8"

sudo apt-get update

# for Debian:
# sudo apt-get install libgd-dev

# for Ubuntu:
sudo apt-get install libgd2-xpm-dev

mkdir src
pwd

cd src
test -d "nginx-${nginx_version}" || wget http://nginx.org/download/nginx-${nginx_version}.tar.gz && tar xvf nginx-${nginx_version}.tar.gz
test -d "pcre-${pcre_version}" || wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-${pcre_version}.tar.gz && tar xvf pcre-${pcre_version}.tar.gz
test -d "openssl-${openssl_version}" || wget https://www.openssl.org/source/openssl-${openssl_version}.tar.gz && tar xvf openssl-${openssl_version}.tar.gz
test -d "zlib-${zlib_version}" || wget http://zlib.net/zlib-${zlib_version}.tar.gz && tar xvf zlib-${zlib_version}.tar.gz

cd nginx-${nginx_version}

./configure \
	--with-openssl=../openssl-1.0.2e \
	--with-zlib=../zlib-1.2.8 \
	--with-pcre=../pcre-8.37 \
	--with-pcre-jit \
	--with-http_ssl_module \
	--with-http_v2_module \
	--with-http_image_filter_module \
	--with-http_gunzip_module \
	--with-http_gzip_static_module \
	--with-http_stub_status_module

make
sudo make install

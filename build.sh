#!/bin/bash -ex

set -o pipefail

nginx_version="1.9.5"
openssl_version="1.0.2e"
pcre_version="8.37"
zlib_version="1.2.8"

sudo apt-get install libgd-dev

wget http://nginx.org/download/nginx-${nginx_version}.tar.gz
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-${pcre_version}.tar.gz
wget https://www.openssl.org/source/openssl-${openssl_version}.tar.gz
wget http://zlib.net/zlib-${zlib_version}.tar.gz

tar xvf pcre-${pcre_version}.tar.gz
tar xvf openssl-${openssl_version}.tar.gz
tar xvf zlib-${slib_version}.tar.gz
tar xvf nginx-${version}.tar.gz

cd nginx-${version}

./configure \
	--with-openssl=../openssl-1.0.2e \
	--with-zlib=../zlib-1.2.8 \
	--with-pcre=../pcre-8.37 \
	--with-http_ssl_module \
	--with-http_v2_module \ 
	--with-http_image_filter_module \
	--with-http_gunzip_module \
	--with-http_gzip_static_module \
	--with-http_stub_status_module

make
sudo make install

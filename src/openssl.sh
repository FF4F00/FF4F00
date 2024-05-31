#!/bin/zsh
src="openssl-3.3.0"
url="https://github.com/openssl/openssl/archive/refs/tags/openssl-3.3.0.tar.gz"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/openssl-$src" && ./config && sudo make && sudo make install

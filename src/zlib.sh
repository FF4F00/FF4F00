#!/bin/zsh
url="https://zlib.net/zlib-1.3.1.tar.gz"
src="zlib-1.3.1"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src" && ./configure && sudo make && sudo make install

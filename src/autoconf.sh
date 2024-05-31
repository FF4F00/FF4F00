#!/bin/zsh
url="https://mirrors.ocf.berkeley.edu/gnu/autoconf/autoconf-2.70.tar.gz"
src="autoconf-2.70"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src" && ./configure && sudo make && sudo make install

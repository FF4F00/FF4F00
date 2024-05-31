#!/bin/zsh
url="https://mirrors.ocf.berkeley.edu/gnu/m4/m4-1.4.19.tar.gz"
src="m4-1.4.19"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src" && ./configure && sudo make && sudo make install

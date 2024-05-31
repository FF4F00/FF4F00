#!/bin/zsh
url="https://mirrors.ocf.berkeley.edu/gnu/gettext/gettext-0.22.5.tar.gz"
src="gettext-0.22.5"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src" && ./configure && sudo make && sudo make install

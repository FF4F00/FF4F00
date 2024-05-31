#!/bin/zsh
url="https://github.com/mpv-player/mpv/archive/refs/tags/v0.38.0.tar.gz"
src="mpv-0.38.0"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src" && ./configure && sudo make && sudo make install

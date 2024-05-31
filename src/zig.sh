#!/bin/zsh
url="https://github.com/ziglang/zig/archive/refs/tags/0.12.0.tar.gz"
src="zig-0.12.0"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src" && mkdir build && cd build && sudo cmake .. && sudo make install


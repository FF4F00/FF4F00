#!/bin/zsh
url="https://github.com/neovim/neovim/archive/refs/tags/v0.9.5.tar.gz"
src="neovim-0.9.5"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src" && make CMAKE_BUILD_TYPE=Release && sudo make install

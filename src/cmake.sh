#!/bin/zsh
url="https://github.com/Kitware/CMake/releases/download/v3.29.2/cmake-3.29.2.tar.gz"
src="cmake-3.29.2"

dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src" && ./bootstrap && sudo make && sudo make install

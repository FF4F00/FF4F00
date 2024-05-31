#!/bin/zsh
url="https://ftp.gnu.org/gnu/readline/readline-8.1.tar.gz"
src="readline-8.1"

dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src" && ./configure && sudo make && sudo make install

#!/bin/zsh
url="https://github.com/wxWidgets/wxWidgets/archive/refs/tags/v3.2.4.tar.gz"
src="wxWidgets 3.2.4"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src" && ./configure --disable-shared --enable-unicode --with-osx_cocoa --with-macosx-version-min=10.9 && make -j8 && sudo make install

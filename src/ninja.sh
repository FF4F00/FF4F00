#!/bin/zsh
src="ninja-1.12.0"
url="https://github.com/ninja-build/ninja/archive/refs/tags/v1.12.0.tar.gz"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

cd "$dir/$src" && ./configure

    sudo cmake -Bbuild-cmake
    sudo cmake --build build-cmake
    sudo ./build-cmake/ninja_test
    sudo mv /tmp/$src/build-cmake/ninja /usr/local/bin/ninja

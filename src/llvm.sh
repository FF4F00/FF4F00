#!/bin/zsh
url="https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-18.1.6.tar.gz"
src="llvmorg-18.1.6"


dir="/tmp"
zip="tar.gz"

# # DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# # UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/llvm-project-llvmorg-18.1.6" 

cmake -G "Ninja" \
      -DCMAKE_BUILD_TYPE=Release \
      -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra" \
      -DCMAKE_INSTALL_PREFIX=/usr/local/llvm \
      ../llvm-project-llvmorg-18.1.6/llvm


ninja && sudo ninja install



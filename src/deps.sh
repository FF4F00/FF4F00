#!/bin/zsh
dir="/tmp"
zip="tar.gz"

cmake="cmake-3.29.2"
ninja="ninja-1.12.0"
gettext="gettext-0.22.5"
openssl="openssl-3.3.0"
autoconf="autoconf-2.70"
xz="xz-5.2.5"
zlib="zlib-1.3.1"
readline="readline-8.1"
libtool="libtool-2.4.7"
m4="m4-1.4.19"
automake="automake-1.16.5"
wxmac="wxWidgets 3.2.4"
Python="Python-3.12.3"
meson="meson-1.4.0"



# DOWNLOAD
curl -o "$dir/$cmake.$zip"    -OL "https://github.com/Kitware/CMake/releases/download/v3.29.2/$cmake.$zip"
curl -o "$dir/$ninja.$zip"    -OL "https://github.com/ninja-build/ninja/archive/refs/tags/v1.12.0.$zip"
curl -o "$dir/$gettext.$zip"  -OL "https://mirrors.ocf.berkeley.edu/gnu/gettext/gettext.$zip"
curl -o "$dir/$openssl.$zip"  -OL "https://github.com/openssl/openssl/archive/refs/tags/$openssl.$zip"
curl -o "$dir/$autoconf.$zip" -OL "https://mirrors.ocf.berkeley.edu/gnu/autoconf/$autoconf.$zip"
curl -o "$dir/$xz.$zip"       -OL "https://tukaani.org/xz/$xz.$zip"
curl -o "$dir/$zlib.$zip"     -OL "https://zlib.net/$zlib.$zip"
curl -o "$dir/$readline.$zip" -OL "https://ftp.gnu.org/gnu/readline/$readline.$zip"
curl -o "$dir/$libtool.$zip"  -OL "https://ftpmirror.gnu.org/libtool/$libtool.$zip"
curl -o "$dir/$m4.$zip"       -OL "https://mirrors.ocf.berkeley.edu/gnu/m4/$m4.$zip"
curl -o "$dir/$automake.$zip" -OL "https://mirrors.ocf.berkeley.edu/gnu/automake/$automake.$zip"
curl -o "$dir/$wxmac.$zip"    -OL "https://github.com/wxWidgets/wxWidgets/archive/refs/tags/v3.2.4.$zip"
curl -o "$dir/$Python.tgz"   -OL "https://www.python.org/ftp/python/3.12.3/Python-3.12.3.tgz"


# UNPACK
tar -xzvf "$dir/$cmake.$zip"    -C $dir
tar -xzvf "$dir/$ninja.$zip"    -C $dir
tar -xzvf "$dir/$gettext.$zip"  -C $dir
tar -xzvf "$dir/$openssl.$zip"  -C $dir
tar -xzvf "$dir/$autoconf.$zip" -C $dir
tar -xzvf "$dir/$xz.$zip"       -C $dir
tar -xzvf "$dir/$zlib.$zip"     -C $dir
tar -xzvf "$dir/$readline.$zip" -C $dir
tar -xzvf "$dir/$libtool.$zip"  -C $dir
tar -xzvf "$dir/$m4.$zip"       -C $dir
tar -xzvf "$dir/$automake.$zip" -C $dir
tar -xzvf "$dir/$wxmac.$zip"    -C $dir
tar -xzvf "$dir/$Python.tgz"    -C $dir

# INSTALL
cd "$dir/$cmake"    && ./bootstrap && make && sudo make install # cmake
cd "$dir/$ninja" && ./configure
    sudo cmake -Bbuild-cmake
    sudo cmake --build build-cmake
    sudo ./build-cmake/ninja_test
    sudo mv /tmp/$src/build-cmake/ninja /usr/local/bin/ninja
cd "$dir/$readline" && ./configure && make && sudo make install # readline
cd "$dir/$gettext"  && ./configure && make && sudo make install # gettext
cd "$dir/$m4"       && ./configure && make && sudo make install # m4
cd "$dir/$openssl"  && ./config    && make && sudo make install # openssl
cd "$dir/$autoconf" && ./configure && make && sudo make install # autoconf
cd "$dir/$xz"       && ./configure && make && sudo make install # xz
cd "$dir/$zlib"     && ./configure && make && sudo make install # zlib
cd "$dir/$libtool"  && ./configure && make && sudo make install # libtool
cd "$dir/$automake" && ./configure && make && sudo make install # automake
cd "$dir/$wxmac"    && ./configure --disable-shared --enable-unicode --with-osx_cocoa --with-macosx-version-min=10.9 && make -j8 && sudo make install
cd "$dir/$Python"   && ./configure && sudo make -s -j2 install
echo 'export PATH="/Users/wrk/Library/Python/3.9/bin:$PATH"' >> ~/.zshrc
pip3 install meson
source ffmpeg.sh

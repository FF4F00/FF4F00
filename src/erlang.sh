#!/bin/zsh
url="https://github.com/erlang/otp/releases/download/OTP-26.2.3/otp_src_26.2.3.tar.gz"
src="otp_src_26.2.3"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src"

    export ERL_TOP=`pwd`
    export LANG=C
    sudo ./configure
    sudo make install clean

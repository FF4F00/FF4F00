#!/bin/zsh

src="bandwhich"
url="https://github.com/imsnif/bandwhich.git"

dir="/tmp"
git="git clone $url $dir/$src"

$git && cd "$dir/$src" && cargo build --release

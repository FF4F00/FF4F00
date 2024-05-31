#!/bin/zsh

src="botttom"
url="https://github.com/ClementTsang/bottom.git"

dir="/tmp"
git="git clone $url $dir/$src"

$git && cd "$dir/$src" && cargo install --path . --locked

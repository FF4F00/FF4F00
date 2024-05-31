#!/bin/zsh

source erlang.sh

src="elixir"
url="https://github.com/elixir-lang/elixir.git"

dir="/tmp"
git="git clone $url $dir/$src"

$git && cd "$dir/$src" && sudo make && sudo make install

mix archive.install github hexpm/hex branch latest

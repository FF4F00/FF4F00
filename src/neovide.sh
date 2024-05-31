#!/bin/zsh
url="https://github.com/neovide/neovide"
src="neovide"


dir="/tmp"
git="git clone $url $dir/$src"

# INSTALL
$git && cd "$dir/$src" && cargo install --path . && cargo install cargo-bundle && cargo bundle --release
cp -r ./target/release/bundle/osx/Neovide.app /Applications/Neovide.app

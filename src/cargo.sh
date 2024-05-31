#!/bin/zsh
dir="/tmp"
zip="tar.gz"

bacon="bacon-2.16.0"
bandwhich="bandwhich-0.22.2"
bat="bat-0.24.0"
bottom="bottom-0.9.6"
cargo_bundle="cargo-bundle-0.6.0"
cargo_info="cargo-info-main"
coreutils="coreutils-0.0.26"
dust="dust-1.0.0"
evcxr="evcxr-0.17.0"
gitui="gitui-0.26.1"
himalaya="himalaya-1.0.0-beta.4"
lsd="lsd-1.1.2"
mprocs="mprocs-0.6.4"
onefetch="onefetch-2.20.0"
ripgrep="ripgrep-14.1.0"
speedtest_rs="speedtest-rs-0.1.5"
starship="starship-1.18.2"
zoxide="zoxide-0.9.4"

# DOWNLOAD
# curl -o "$dir/$bacon.$zip"        -OL "https://github.com/Canop/bacon/archive/refs/tags/v2.16.0.tar.gz"
# curl -o "$dir/$bandwhich.$zip"    -OL "https://github.com/imsnif/bandwhich/archive/refs/tags/v0.22.2.tar.gz"
# curl -o "$dir/$bat.$zip"          -OL "https://github.com/sharkdp/bat/archive/refs/tags/v0.24.0.tar.gz"
# curl -o "$dir/$bottom.$zip"       -OL "https://github.com/ClementTsang/bottom/archive/refs/tags/0.9.6.tar.gz"
# curl -o "$dir/$cargo_bundle.$zip" -OL "https://github.com/burtonageo/cargo-bundle/archive/refs/tags/v0.6.0.tar.gz"
# curl -o "$dir/$cargo_info.$zip"   -OL "https://gitlab.com/imp/cargo-info/-/archive/main/cargo-info-main.tar.gz"
# curl -o "$dir/$coreutils.$zip"    -OL "https://github.com/uutils/coreutils/archive/refs/tags/0.0.26.tar.gz"
# curl -o "$dir/$dust.$zip"         -OL "https://github.com/bootandy/dust/archive/refs/tags/v1.0.0.tar.gz"
# curl -o "$dir/$evcxr.$zip"        -OL "https://github.com/evcxr/evcxr/archive/refs/tags/v0.17.0.tar.gz"
# curl -o "$dir/$gitui.$zip"        -OL "https://github.com/extrawurst/gitui/archive/refs/tags/v0.26.1.tar.gz"
# curl -o "$dir/$himalaya.$zip"     -OL "https://github.com/soywod/himalaya/archive/refs/tags/v1.0.0-beta.4.tar.gz"
# curl -o "$dir/$lsd.$zip"          -OL "https://github.com/lsd-rs/lsd/archive/refs/tags/v1.1.2.tar.gz"
# curl -o "$dir/$mprocs.$zip"       -OL "https://github.com/pvolok/mprocs/archive/refs/tags/v0.6.4.tar.gz"
# curl -o "$dir/$onefetch.$zip"     -OL "https://github.com/o2sh/onefetch/archive/refs/tags/2.20.0.tar.gz"
# curl -o "$dir/$ripgrep.$zip"      -OL "https://github.com/BurntSushi/ripgrep/archive/refs/tags/14.1.0.tar.gz"
# curl -o "$dir/$speedtest_rs.$zip" -OL "https://github.com/nelsonjchen/speedtest-rs/archive/refs/tags/v0.1.5.tar.gz"
# curl -o "$dir/$starship.$zip"     -OL "https://github.com/starship/starship/archive/refs/tags/v1.18.2.tar.gz"
# curl -o "$dir/$zoxide.$zip"       -OL "https://github.com/ajeetdsouza/zoxide/archive/refs/tags/v0.9.4.tar.gz"

# # UNPACK
# tar -xzvf "$dir/$bacon.$zip"        -C $dir
# tar -xzvf "$dir/$bandwhich.$zip"    -C $dir
# tar -xzvf "$dir/$bat.$zip"          -C $dir
# tar -xzvf "$dir/$bottom.$zip"       -C $dir
# tar -xzvf "$dir/$cargo_bundle.$zip" -C $dir
# tar -xzvf "$dir/$cargo_info.$zip"   -C $dir
# tar -xzvf "$dir/$coreutils.$zip"    -C $dir
# tar -xzvf "$dir/$dust.$zip"         -C $dir
# tar -xzvf "$dir/$evcxr.$zip"        -C $dir
# tar -xzvf "$dir/$gitui.$zip"        -C $dir
# tar -xzvf "$dir/$himalaya.$zip"     -C $dir
# tar -xzvf "$dir/$lsd.$zip"          -C $dir
# tar -xzvf "$dir/$mprocs.$zip"       -C $dir
# tar -xzvf "$dir/$onefetch.$zip"     -C $dir
# tar -xzvf "$dir/$ripgrep.$zip"      -C $dir
# tar -xzvf "$dir/$speedtest_rs.$zip" -C $dir
# tar -xzvf "$dir/$starship.$zip"     -C $dir
# tar -xzvf "$dir/$zoxide.$zip"       -C $dir

# INSTALL
cd "$dir/$bacon"        && cargo build --release && sudo mv target/release/bacon        #/usr/local/bin
cd "$dir/$bandwhich"    && cargo build --release && sudo mv target/release/bandwhich    #/usr/local/bin
cd "$dir/$bat"          && cargo build --release && sudo mv target/release/bat          #/usr/local/bin
cd "$dir/$bottom"       && cargo build --release && sudo mv target/release/bottom       #/usr/local/bin
cd "$dir/$cargo_bundle" && cargo build --release && sudo mv target/release/cargo-bundle #/usr/local/bin
cd "$dir/$cargo_info"   && cargo build --release && sudo mv target/release/lsd          #/usr/local/bin
cd "$dir/$coreutils"    && cargo build --release && sudo mv target/release/coreutils    #/usr/local/bin
cd "$dir/$dust"         && cargo build --release && sudo mv target/release/dust         #/usr/local/bin
cd "$dir/$evcxr"        && cargo build --release && sudo mv target/release/evcxr        #/usr/local/bin
cd "$dir/$gitui"        && cargo build --release && sudo mv target/release/gitui        #/usr/local/bin
cd "$dir/$himalaya"     && cargo build --release && sudo mv target/release/himalaya     #/usr/local/bin
cd "$dir/$lsd"          && cargo build --release && sudo mv target/release/lsd          #/usr/local/bin
cd "$dir/$mprocs"       && cargo build --release && sudo mv target/release/mprocs       #/usr/local/bin
cd "$dir/$onefetch"     && cargo build --release && sudo mv target/release/onefetch     #/usr/local/bin
cd "$dir/$ripgrep"      && cargo build --release && sudo mv target/release/rg           #/usr/local/bin
cd "$dir/$speedtest_rs" && cargo build --release && sudo mv target/release/speedtest    #/usr/local/bin
cd "$dir/$starship"     && cargo build --release && sudo mv target/release/starship     #/usr/local/bin
cd "$dir/$zoxide"       && cargo build --release && sudo mv target/release/zoxide       #/usr/local/bin

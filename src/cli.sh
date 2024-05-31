#!/bin/zsh
dir="/tmp"
zip="tar.gz"



fzf="fzf-0.50.0"
pass="password-store-1.7.4"
zeit="zeit-0.0.8"
ots="ots-0.2.0"
httpie="cli-3.2.2"
tldr="tldr-2.2"
tmux="tmux-3.4"
mpv="mpv-0.38.0"
mpd="mpd-0.23.15"
mpc="mpc-0.35"
cava="cava-0.10.1"
pandoc="pandoc-3.1.13"


# DOWNLOAD
# curl -o  "$dir/$coreutils.$zip"  -OL "https://github.com/uutils/coreutils/archive/refs/tags/0.0.26.tar.gz"
# curl -o  "$dir/$fzf.$zip"        -OL "https://github.com/junegunn/fzf/archive/refs/tags/0.50.0.tar.gz"
# curl -o  "$dir/$bat.$zip"        -OL "https://github.com/sharkdp/bat/archive/refs/tags/v0.24.0.tar.gz"
# curl -o  "$dir/$lsd.$zip"        -OL "https://github.com/lsd-rs/lsd/archive/refs/tags/v1.1.2.tar.gz"
# curl -o  "$dir/$ripgrep.$zip"    -OL "https://github.com/BurntSushi/ripgrep/archive/refs/tags/14.1.0.tar.gz"
# curl -o  "$dir/$dust.$zip"       -OL "https://github.com/bootandy/dust/archive/refs/tags/v1.0.0.tar.gz"
# curl -o  "$dir/$zoxide.$zip"     -OL "https://github.com/ajeetdsouza/zoxide/archive/refs/tags/v0.9.4.tar.gz"
# curl -o  "$dir/$starship.$zip"   -OL "https://github.com/starship/starship/archive/refs/tags/v1.18.2.tar.gz"
# curl -o  "$dir/$pass.tar.xz"     -OL "https://git.zx2c4.com/password-store/snapshot/password-store-1.7.4.tar.xz"
# curl -o  "$dir/$bacon.$zip"      -OL "https://github.com/Canop/bacon/archive/refs/tags/v2.16.0.tar.gz"
# curl -o  "$dir/$cargo_info.$zip" -OL "https://gitlab.com/imp/cargo-info/-/archive/main/cargo-info-main.tar.gz"
# curl -o  "$dir/$evcxr.$zip"      -OL "https://github.com/evcxr/evcxr/archive/refs/tags/v0.17.0.tar.gz"
# curl -o  "$dir/$gitui.$zip"      -OL "https://github.com/extrawurst/gitui/archive/refs/tags/v0.26.1.tar.gz"
# curl -o  "$dir/$zeit.$zip"       -OL "https://github.com/mrusme/zeit/archive/refs/tags/v0.0.8.tar.gz"
# curl -o  "$dir/$ots.$zip"        -OL "https://github.com/sniptt-official/ots/archive/refs/tags/v0.2.0.tar.gz"
# curl -o  "$dir/$himalaya.$zip"   -OL "https://github.com/soywod/himalaya/archive/refs/tags/v1.0.0-beta.4.tar.gz"
# curl -o  "$dir/$httpie.$zip"     -OL "https://github.com/httpie/cli/archive/refs/tags/3.2.2.tar.gz"
# curl -o  "$dir/$tldr.$zip"       -OL "https://github.com/tldr-pages/tldr/archive/refs/tags/v2.2.tar.gz"
# curl -o  "$dir/$mprocs.$zip"     -OL "https://github.com/pvolok/mprocs/archive/refs/tags/v0.6.4.tar.gz"
# curl -o  "$dir/$tmux.$zip"       -OL "https://github.com/tmux/tmux/releases/download/3.4/tmux-3.4.tar.gz"
# curl -o  "$dir/$onefetch.$zip"   -OL "https://github.com/o2sh/onefetch/archive/refs/tags/2.20.0.tar.gz"
# curl -o  "$dir/$btm.$zip"        -OL "https://github.com/ClementTsang/bottom/archive/refs/tags/0.9.6.tar.gz"
# curl -o  "$dir/$bandwhich.$zip"  -OL "https://github.com/imsnif/bandwhich/archive/refs/tags/v0.22.2.tar.gz"
# curl -o  "$dir/$speedtest.$zip"  -OL "https://github.com/nelsonjchen/speedtest-rs/archive/refs/tags/v0.1.5.tar.gz"
# curl -o  "$dir/$mpv.$zip"        -OL "https://github.com/mpv-player/mpv/archive/refs/tags/v0.38.0.tar.gz"
# curl -o  "$dir/$mpd.tar.xz"      -OL "https://www.musicpd.org/download/mpd/0.23/mpd-0.23.15.tar.xz"
# curl -o  "$dir/$mpc.tar.xz"      -OL "https://www.musicpd.org/download/mpc/0/mpc-0.35.tar.xz"
# curl -o  "$dir/$cava.$zip"       -OL "https://github.com/karlstav/cava/archive/refs/tags/0.10.1.tar.gz"
# curl -o  "$dir/$pandoc.$zip"     -OL "https://hackage.haskell.org/package/pandoc-3.1.13/pandoc-3.1.13.tar.gz"


# UNPACK
# tar -xzvf  "$dir/$coreutils.$zip"  -C $dir
# tar -xzvf  "$dir/$fzf.$zip"        -C $dir
# tar -xzvf  "$dir/$bat.$zip"        -C $dir
# tar -xzvf  "$dir/$lsd.$zip"        -C $dir
# tar -xzvf  "$dir/$ripgrep.$zip"    -C $dir
# tar -xzvf  "$dir/$dust.$zip"       -C $dir
# tar -xzvf  "$dir/$zoxide.$zip"     -C $dir
# tar -xzvf  "$dir/$starship.$zip"   -C $dir
# tar -xzvf  "$dir/$pass.tar.xz"     -C $dir
# tar -xzvf  "$dir/$bacon.$zip"      -C $dir
# tar -xzvf  "$dir/$cargo_info.$zip" -C $dir
# tar -xzvf  "$dir/$evcxr.$zip"      -C $dir
# tar -xzvf  "$dir/$gitui.$zip"      -C $dir
# tar -xzvf  "$dir/$zeit.$zip"       -C $dir
# tar -xzvf  "$dir/$ots.$zip"        -C $dir
# tar -xzvf  "$dir/$himalaya.$zip"   -C $dir
# tar -xzvf  "$dir/$httpie.$zip"     -C $dir
# tar -xzvf  "$dir/$tldr.$zip"       -C $dir
# tar -xzvf  "$dir/$mprocs.$zip"     -C $dir
# tar -xzvf  "$dir/$tmux.$zip"       -C $dir
# tar -xzvf  "$dir/$onefetch.$zip"   -C $dir
# tar -xzvf  "$dir/$btm.$zip"        -C $dir
# tar -xzvf  "$dir/$bandwhich.$zip"  -C $dir
# tar -xzvf  "$dir/$speedtest.$zip"  -C $dir
# tar -xzvf  "$dir/$mpv.$zip"        -C $dir
# tar -xzvf  "$dir/$mpd.tar.xz"      -C $dir
# tar -xzvf  "$dir/$mpc.tar.xz"      -C $dir
# tar -xzvf  "$dir/$cava.$zip"       -C $dir
# tar -xzvf  "$dir/$pandoc.$zip"     -C $dir

# INSTALL
cd  "$dir/$mpv"            && meson setup build && meson compile -C build && meson install -C build
# cd  "$dir/$mpc"          && ./configure && make && sudo make install
# cd  "$dir/$fzf"          && ./install --all
# cd  "$dir/$mpd"          && ./configure && make && sudo make install
# cd  "$dir/$btm"          && cargo build --release && sudo mv target/release/btm /usr/local/bin
# cd  "$dir/$bandwhich"    && sudo make install
# cd  "$dir/$speedtest_rs" && sudo make install
# cd  "$dir/$bacon"        && sudo make install
# cd  "$dir/$onefetch"     && cargo build --release && sudo mv target/release/onefetch /usr/local/bin
# cd  "$dir/$cava"         && ./install.sh
# cd  "$dir/$pandoc"       && ./configure && make && sudo make install
# cd  "$dir/$pass"         && sudo make install
# cd  "$dir/$starship"     && cargo build --release --locked && sudo mv target/release/starship /usr/local/bin
# cd  "$dir/$bat"          && cargo build --release && sudo mv target/release/bat /usr/local/bin
# cd  "$dir/$cargo_info"   && sudo make install
# cd  "$dir/$coreutils"    && ./configure && make && sudo make install
# cd  "$dir/$dust"         && cargo build --release && sudo mv target/release/dust /usr/local/bin
# cd  "$dir/$evcxr"        && cargo build --release && sudo mv target/release/evcxr /usr/local/bin
# cd  "$dir/$gitui"        && cargo build --release && sudo mv target/release/gitui /usr/local/bin
# cd  "$dir/$lsd"          && cargo build --release && sudo mv target/release/lsd /usr/local/bin
# cd  "$dir/$mprocs"       && sudo make install
# cd  "$dir/$ripgrep"      && cargo build --release --features 'pcre2' && sudo mv target/release/rg /usr/local/bin
# cd  "$dir/$tmux"         && ./configure && make && sudo make install
# cd  "$dir/$zoxide"       && cargo build --release && sudo mv target/release/zoxide /usr/local/bin
# cd  "$dir/$zeit"         && sudo make install
# cd  "$dir/$ots"          && cargo build --release && sudo mv target/release/ots /usr/local/bin
# cd  "$dir/$himalaya"     && cargo build --release && sudo mv target/release/himalaya /usr/local/bin
# cd  "$dir/$httpie"       && sudo python setup.py install
# cd  "$dir/$tldr"         && sudo make install




url="https://github.com/neovim/neovim/archive/refs/tags/v0.9.5.tar.gz"
src="neovim-0.9.5"


dir="/tmp"
zip="tar.gz"

# DOWNLOAD
curl -o "$dir/$src.$zip" -OL "$url"

# UNPACK
tar -xzvf "$dir/$src.$zip" -C $dir

# INSTALL
cd "$dir/$src" && make CMAKE_BUILD_TYPE=Release && sudo make install
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

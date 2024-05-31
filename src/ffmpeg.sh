##!/bin/zsh
dir="/tmp"
zip="tar.gz"

aom="aom-3.1.2"
avi_synth_plus="AviSynthPlus-3.7.0"
brotli="brotli-1.0.9"
faac="faac-1.30"
fdk="fdk-aac-2.0.3"
fontconfig="fontconfig-2.13.93"
freetype="freetype-2.10.4"
fribidi="fribidi-1.0.10"
harfbuzz="harfbuzz-2.8.2"
lame="lame-3.100"
libass="libass-0.17.1"
libbluray="libbluray-1.3.0"
libogg="libogg-1.3.5"
libpng="libpng-1.6.37"
libsrt="libsrt-1.4.3"
libvorbis="libvorbis-1.3.7"
libvpx="libvpx"
libwebp="libwebp-1.2.0"
nasm="nasm-2.15.05"
openh264="openh264-2.1.1"
opus="opus-1.5.2"
pkg_config="pkg-config-0.29.2"
sdl2="SDL-2.0.20"
shtool="shtool-2.0.8"
speedtest="speedtest-rs"
svt_av1="svt-av1-0.8.7"
texi2html="texi2html-5.0"
theora="libtheora-1.1.1"
x264="x264"
x265="x265_3.6"
xvidcore="xvidcore-1.3.7"

# DOWNLOAD
curl -o "$dir/$aom"                     -OL "git clone https://aomedia.googlesource.com/aom"
curl -o "$dir/$avi_synth_plus.$zip"     -OL "https://github.com/AviSynth/AviSynthPlus/archive/refs/tags/v3.7.3.$zip"
curl -o "$dir/$brotli.$zip"             -OL "https://github.com/google/brotli/archive/refs/tags/v1.1.0.$zip"
curl -o "$dir/$faac.$zip"               -OL "https://github.com/knik0/faac/archive/refs/tags/1_30.$zip"
curl -o "$dir/$fdk.$zip"                -OL "https://github.com/mstorsjo/fdk-aac/archive/refs/tags/v2.0.3.$zip"
curl -o "$dir/$fontconfig.$zip"         -OL "https://gitlab.freedesktop.org/fontconfig/fontconfig/-/archive/2.15.0/fontconfig-2.15.0.$zip"
curl -o "$dir/$freetype.$zip"           -OL "https://download.savannah.gnu.org/releases/freetype/freetype-doc-2.13.2.$zip"
curl -o "$dir/$fribidi.$zip"            -OL "https://github.com/fribidi/fribidi/archive/refs/tags/v1.0.14.$zip"
curl -o "$dir/$harfbuzz.$zip"           -OL "https://github.com/harfbuzz/harfbuzz/archive/refs/tags/8.4.0.$zip"
curl -o "$dir/$lame.$zip"               -OL "https://sourceforge.net/projects/lame/files/lame/3.100/lame-3.100.$zip"
curl -o "$dir/$libass.$zip"             -OL "https://github.com/libass/libass/archive/refs/tags/0.17.1.$zip"
curl -o "$dir/$libbluray.$zip"          -OL "https://download.videolan.org/pub/videolan/libbluray/1.3.4/libbluray-1.3.4.tar.bz2"
curl -o "$dir/$libogg.$zip"             -OL "https://downloads.xiph.org/releases/ogg/libogg-1.3.5.$zip"
curl -o "$dir/$libpng.$zip"             -OL "https://github.com/pnggroup/libpng/archive/refs/tags/v1.6.43.$zip"
curl -o "$dir/$libsrt.$zip"             -OL "https://github.com/Haivision/srt/archive/refs/tags/v1.5.3.$zip"
curl -o "$dir/$libvorbis.$zip"          -OL "https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.7.$zip"
curl -o "$dir/$libvpx.$zip"             -OL "https://github.com/webmproject/libvpx/archive/refs/tags/v1.14.0.$zip"
curl -o "$dir/$libwebp.$zip"            -OL "https://github.com/webmproject/libwebp/archive/refs/tags/v1.4.0.$zip"
curl -o "$dir/$nasm.$zip"               -OL "https://www.nasm.us/pub/nasm/releasebuilds/2.16.03/nasm-2.16.03.$zip"
curl -o "$dir/$openh264.$zip"           -OL "https://github.com/cisco/openh264/archive/refs/tags/v2.4.1.$zip"
curl -o "$dir/$opus.$zip"               -OL "https://downloads.xiph.org/releases/opus/opus-1.5.2.$zip"
curl -o "$dir/$pkg_config.$zip"         -OL "https://github.com/xpack-dev-tools/pkg-config-xpack/archive/refs/tags/v0.29.2-1.$zip"
curl -o "$dir/$sdl2.$zip"               -OL "http://www.libsdl.org/release/SDL2-2.0.12.$zip"
curl -o "$dir/$shtool.$zip"             -OL "https://ftp.gnu.org/gnu/shtool/shtool-2.0.8.$zip"
curl -o "$dir/$speedtest.$zip"          -OL "https://github.com/nelsonjchen/speedtest-rs/archive/refs/tags/v0.1.5.$zip"
curl -o "$dir/$svt_av1.$zip"            -OL "https://gitlab.com/AOMediaCodec/SVT-AV1/-/archive/v0.8.7/SVT-AV1-v0.8.7.$zip"
curl -o "$dir/$texi2html.$zip"          -OL "https://github.com/google/brotli/archive/refs/tags/v1.1.0.$zip"
curl -o "$dir/$theora.$zip"             -OL "https://github.com/xiph/theora/archive/refs/tags/v1.1.1.$zip"
curl -o "$dir/$x264.$zip"               -OL "https://code.videolan.org/videolan/x264/-/archive/master/x264-master.$zip"
curl -o "$dir/$x265.$zip"               -OL "https://bitbucket.org/multicoreware/x265_git/downloads/x265_3.6.$zip"
curl -o "$dir/$xvidcore.$zip"           -OL "https://github.com/nanake/xvidcore/archive/refs/tags/git-1fd3f3f.$zip"


# UNPACK
tar -xzvf "$dir/$aom"                     -C $dir
tar -xzvf "$dir/$avi_synth_plus.$zip"     -C $dir
tar -xzvf "$dir/$brotli.$zip"             -C $dir
tar -xzvf "$dir/$faac.$zip"               -C $dir
tar -xzvf "$dir/$fdk.$zip"                -C $dir
tar -xzvf "$dir/$fontconfig.$zip"         -C $dir
tar -xzvf "$dir/$freetype.$zip"           -C $dir
tar -xzvf "$dir/$fribidi.$zip"            -C $dir
tar -xzvf "$dir/$harfbuzz.$zip"           -C $dir
tar -xzvf "$dir/$lame.$zip"               -C $dir
tar -xzvf "$dir/$libass.$zip"             -C $dir
tar -xzvf "$dir/$libbluray.$zip"          -C $dir
tar -xzvf "$dir/$libogg.$zip"             -C $dir
tar -xzvf "$dir/$libpng.$zip"             -C $dir
tar -xzvf "$dir/$libsrt.$zip"             -C $dir
tar -xzvf "$dir/$libvorbis.$zip"          -C $dir
tar -xzvf "$dir/$libvpx.$zip"             -C $dir
tar -xzvf "$dir/$libwebp.$zip"            -C $dir
tar -xzvf "$dir/$nasm.$zip"               -C $dir
tar -xzvf "$dir/$openh264.$zip"           -C $dir
tar -xzvf "$dir/$opus.$zip"               -C $dir
tar -xzvf "$dir/$pkg_config.$zip"         -C $dir
tar -xzvf "$dir/$sdl2.$zip"               -C $dir
tar -xzvf "$dir/$shtool.$zip"             -C $dir
tar -xzvf "$dir/$speedtest.$zip"          -C $dir
tar -xzvf "$dir/$svt_av1.$zip"            -C $dir
tar -xzvf "$dir/$texi2html.$zip"          -C $dir
tar -xzvf "$dir/$theora.$zip"             -C $dir
tar -xzvf "$dir/$x264.$zip"               -C $dir
tar -xzvf "$dir/$x265.$zip"               -C $dir
tar -xzvf "$dir/$xvidcore.$zip"           -C $dir




# INSTALL
# cd $aom            && mkdir build && cd build && cmake .. && make && sudo make install    # aom
# cd $avi_synth_plus && cmake . && make && sudo make install                                # AviSynthPlus
# cd $brotli         && mkdir out && cd out && ../configure && make && sudo make install    # brotli
# cd $faac           && ./configure && make && sudo make install                            # faac
# cd $fontconfig     && ./configure && make && sudo make install                            # fontconfig
# cd $freetype       && ./configure && make && sudo make install                            # freetype
# cd $fribidi        && ./configure && make && sudo make install                            # fribidi
# cd $harfbuzz       && ./configure && make && sudo make install                            # harfbuzz
# cd $lame           && ./configure && make && sudo make install                            # lame
# cd $libass         && ./configure && make && sudo make install                            # libass
# cd $libbluray      && ./configure && make && sudo make install                            # libbluray
# cd $libogg         && ./configure && make && sudo make install                            # libogg
# cd $libpng         && ./configure && make && sudo make install                            # libpng
# cd $libtheora      && ./configure && make && sudo make install                            # theora
# cd $libvorbis      && ./configure && make && sudo make install                            # libvorbis
# cd $libvpx         && ./configure && make && sudo make install                            # libvpx
# cd $libwebp        && ./configure && make && sudo make install                            # libwebp
# cd $nasm           && ./configure && make && sudo make install                            # nasm
# cd $openh264       && make && sudo make install                                           # openh264
# cd $opus           && ./configure && make && sudo make install                            # opus
# cd $pkg_config     && ./configure && make && sudo make install                            # pkg-config
# cd $sdl            && ./configure && make && sudo make install                            # SDL
# cd $shtool         && ./configure && make && sudo make install                            # shtool
# cd $src            && ./configure && sudo make && sudo make install                       # source
# cd $svt_av1        && cmake .     && make && sudo make install                            # svt-av1
# cd $texi2html      && ./configure && make && sudo make install                            # texi2html
# cd $x264           && ./configure && make && sudo make install                            # x264
# cd $x265           && cmake -G "Unix Makefiles" ../../source && make && sudo make install # x265
# cd $xvidcore       && ./configure && make && sudo make install                            # xvid

# cd "$dir/$src" && ./configure && sudo make && sudo make install                           # ffmpeg

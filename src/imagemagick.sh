#!/bin/zsh
url="https://github.com/ImageMagick/ImageMagick/archive/refs/tags/7.1.1-31.tar.gz"
src="ImageMagick-7.1.1-31"

dir="/tmp"
zip="tar.gz"

ghostscript="ghostscript-9.50"
jpeg_turbo="libjpeg-turbo-2.0.6"
libheif="libheif-1.11.0"
liblqr="liblqr-1-0.4.2"
libpng="libpng-1.6.37"
libraw="LibRaw-0.20.2"
libtiff="tiff-4.3.0"
little_cms2="lcms2-2.12"
openexr="openexr-2.5.7"
libomp="openmp-13.0.0"


# DOWNLOAD
curl -o "$dir/$src.$zip"         -OL "$url/gnu/m4/$src.$zip"
curl -o "$dir/$ghostscript.$zip" -OL "https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs950/$ghostscript.$zip"
curl -o "$dir/$jpeg_turbo.$zip"  -OL "https://github.com/libjpeg-turbo/libjpeg-turbo/archive/2.0.6.$zip"
curl -o "$dir/$libheif.$zip"     -OL "https://github.com/strukturag/libheif/releases/download/v1.11.0/$libheif.$zip"
curl -o "$dir/$liblqr.$zip"      -OL "https://download.gimp.org/pub/gimp/liblqr/$liblqr.$zip"
curl -o "$dir/$libpng.$zip"      -OL "https://download.sourceforge.net/libpng/$libpng.$zip"
curl -o "$dir/$libraw.$zip"      -OL "https://www.libraw.org/data/$libraw.$zip"
curl -o "$dir/$libtiff.$zip"     -OL "https://download.osgeo.org/libtiff/$libtiff.$zip"
curl -o "$dir/$little_cms2.$zip" -OL "https://downloads.sourceforge.net/project/lcms/lcms/2.12/$little_cms2.$zip"
curl -o "$dir/$openexr.$zip"     -OL "https://github.com/AcademySoftwareFoundation/openexr/archive/v2.5.7.$zip"
# curl -o "$dir/$libomp.$zip"      -OL "https://www.openmprtl.org/sites/default/files/libomp/releases/$libomp.$zip" # BROKEN

# UNPACK
tar -xzvf "$dir/$src.$zip"         -C $dir
tar -xzvf "$dir/$ghostscript.$zip" -C "$dir/$ghostscript"
tar -xzvf "$dir/$jpeg_turbo.$zip"  -C "$dir/$jpeg_turbo"
tar -xzvf "$dir/$libheif.$zip"     -C "$dir/$libheif"
tar -xjvf "$dir/$liblqr.$zip"      -C "$dir/$liblqr"
tar -xzvf "$dir/$libpng.$zip"      -C "$dir/$libpng"
tar -xzvf "$dir/$libraw.$zip"      -C "$dir/$libraw"
tar -xzvf "$dir/$libtiff.$zip"     -C "$dir/$libtiff"
tar -xzvf "$dir/$little_cms2.$zip" -C "$dir/$little_cms2"
tar -xzvf "$dir/$openexr.$zip"     -C "$dir/$openexr"
tar -xzvf "$dir/$libomp.$zip"      -C "$dir/$libomp"

# INSTALL
cd $ghostscript && ./configure && make && sudo make install # ghostscript
cd $jpeg-turbo  && ./configure && make && sudo make install # jpeg-turbo
cd $libheif     && ./configure && make && sudo make install # libheif
cd $liblqr      && ./configure && make && sudo make install # liblqr
cd $libpng      && ./configure && make && sudo make install # libpng
cd $libraw      && ./configure && make && sudo make install # libraw
cd $libtiff     && ./configure && make && sudo make install # libtiff
cd $little-cms2 && ./configure && make && sudo make install # little-cms2
cd $openexr     && ./configure && make && sudo make install # openexr
cd $libomp      && ./configure && make && sudo make install # libomp

cd "$dir/$src"  && ./configure && make && sudo make install # imagemagick






# cd "$dir/$openexr" && mkdir build && cd build && cmake .. && make && sudo make install

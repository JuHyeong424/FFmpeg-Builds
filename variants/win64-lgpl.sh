#!/bin/bash
source "$(dirname "$BASH_SOURCE")"/windows-install-static.sh
source "$(dirname "$BASH_SOURCE")"/defaults-lgpl.sh

FF_CONFIGURE+=" --disable-everything --disable-doc --enable-small \
 --disable-ffplay --disable-ffprobe --disable-network \
 --enable-indev=lavfi \
 --enable-filter=gfxcapture,hwdownload,hwmap,format,fps,color,null,overlay,colorchannelmixer,scale \
 --enable-encoder=h264_nvenc,h264_amf,h264_qsv,h264_mf \
 --enable-decoder=h264,png --enable-parser=h264,png \
 --enable-demuxer=matroska,image2,png_pipe \
 --enable-muxer=matroska,mp4,null \
 --enable-protocol=file"
 --enable-decoder=h264,png,wrapped_avframe --enable-parser=h264,png \

#!/bin/bash

function get_download_version {
echo $GUNBOT_VERSION | tr -d .
}

# DOWNLOAD_VERSION=$(get_download_version)
DOWNLOAD_VERSION=$GUNBOT_VERSION

wget https://github.com/GuntharDeNiro/BTCT/releases/download/v$DOWNLOAD_VERSION/lin.zip
unzip lin.zip
mv lin gunbot
# make the file executable
chmod +x gunbot/gunthy-linux

# patch the release with the binary from 19.3.3
# https://drive.google.com/file/d/1R7B3neHzQ5hMO3KdUpRKVblHsEY0DD41/view?usp=sharing

wget --output-document=gunthy-linux-19.3.3.zip "https://www.dropbox.com/s/pmmz0bbnnuzhuro/gunthy-linux-19.3.3.zip?dl=1"
unzip gunthy-linux-19.3.3.zip
mv gunthy-linux gunbot/gunthy-linux
chmod +x gunbot/gunthy-linux

#!/bin/bash

function get_download_version {
echo $GUNBOT_VERSION | tr -d .
}

# DOWNLOAD_VERSION=$(get_download_version)
DOWNLOAD_VERSION=$GUNBOT_VERSION

wget https://github.com/GuntharDeNiro/BTCT/releases/download/v$DOWNLOAD_VERSION/lin.zip
unzip lin.zip
mv lin gunbot
chmod +x gunbot/gunthy-linux

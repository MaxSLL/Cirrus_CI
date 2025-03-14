#!/bin/bash

cd /root
mkdir orangefox
git config --global user.name "$USERNAME"
git config --global user.email "$USERMAIL"

mkdir /root/OrangeFox_sync
cd /root/OrangeFox_sync
git clone https://gitlab.com/OrangeFox/sync.git
cd /root/OrangeFox_sync/sync/
./orangefox_sync.sh --branch "11.0" --path /root/orangefox
cd ../..
cd orangefox
git clone https://github.com/MaxSLL/twrp_215.git -b ofox-11 device/samsung/m21

exit 0

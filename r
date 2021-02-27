#!/bin/bash
apt update -y -qq > /dev/null
apt install curl git python3 python-is-python3 -y -qq > /dev/null
curl https://storage.googleapis.com/git-repo-downloads/repo -o /bin/repo
chmod a+rx /bin/repo
git config --global color.ui true
git config --global user.name Apon77
git config --global user.email khalakuzzamanapon5@gmail.com
mkdir ~/aosp
cd ~/aosp
repo init --depth=1 -u git://github.com/AospExtended/manifest.git -b 11.x -g default,-device,-mips,-darwin,-notdefault
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j 100 -q

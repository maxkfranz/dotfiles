#!/bin/bash

PKGS="
  chromium-browser
  firefox
  vagrant
  virtualbox
  virtualbox-guest-utils
  vlc
  gitg
  giggle
  eclipse
  gradle
"

# todo gitkraken?

sudo apt-get install $PKGS

# atom
wget https://atom.io/download/deb > atom-amd64.deb
sudo dpkg -i atom-amd64.deb
rm atom-amd64.deb

# install the common stuff
./setup-common.sh
./setup-atom.sh

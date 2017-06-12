#!/bin/bash

PKGS="
  chromium-browser
  firefox
  vagrant
  docker.io
  virtualbox
  virtualbox-guest-utils
  vlc
  gitg
  giggle
  eclipse
  gradle
  build-essential
  cmake
  python
  python3
  python-dev
  python3-dev
  tomcat8
  ruby
  ruby-dev
  nautilus-compare
  meld
  openjdk-9-jre
  openjdk-9-doc
  openjdk-9-jdk
  openjdk-9-demo
  openjdk-9-dbg
  substance
  visualvm
  openvpn
  gadmin-openvpn-client
  mongodb
  screen
  lm-sensors
  gadmin-openvpn-client
  openvpn
  network-manager-openvpn
  network-manager-openvpn-gnome
  network-manager-pptp
  network-manager-vpnc
  openssh-server
"

# todo gitkraken?

sudo apt-get -y update
sudo apt-get -y install $PKGS
sudo apt-get -y upgrade

# atom
wget https://atom.io/download/deb -O atom-amd64.deb
sudo dpkg -i atom-amd64.deb
rm atom-amd64.deb

# install the common stuff
./setup-common.sh
./setup-atom.sh


#!/bin/bash

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
BREWS="
  pv
  openssl
  git
"
brew install $BREWS

# cask
CASKS="
  google-chrome
  firefox
  docker
  docker-toolbox
  virtualbox
  vagrant
  vagrant-bar
  vagrant-manager
  atom
  vlc
  gitup
  eclipse-java
  enpass
  sourcetree
  viscosity
  duet
  appcleaner
  cyberduck
  macdown
  skype
  skypewebplugin
  the-unarchiver
  teleport
  android-studio
  intellij-idea
"
brew tap caskroom/cask
brew cask install $CASKS
brew cask cleanup

# install the common stuff
./setup-common.sh
./setup-atom.sh

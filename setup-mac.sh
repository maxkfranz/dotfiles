#!/bin/bash

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
BREWS="
  pv
  openssl
  git
  cmake
  maven
  neo4j
  redis
  mongodb
  rethinkdb
  wget
  tmux
  node
  java
  scala
"
brew install $BREWS

sudo chgrp -R admin /usr/local
sudo chmod -R g+w /usr/local

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
  visual-studio-code
  synergy
  beamer
  iterm2
  disk-inventory-x
  keeweb
  screens
  sublime-text
"
brew tap caskroom/cask
brew cask install $CASKS
brew cask cleanup

# install the common stuff
./setup-common.sh
./setup-atom.sh

#!/bin/sh

if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install grc coreutils spark
  brew install git
  brew install ag
  brew install chruby
  brew install ruby-installer
  brew install node
  brew install nvm
  brew install postgresql
  brew install mysql
  brew install vim
  brew install macvim
  brew install the_silver_searcher
  brew install influxdb
  brew install tmate
  brew install pkg-config
  brew install cmake
  brew install influxdb
  brew install awscli
  brew install watch
  brew install docker
  brew install boot2docker
  brew install caskroom/cask/brew-cask
  brew cask install transmission
  brew cask install wget
  brew cask install skype
  brew cask install hipchat
  brew cask install slack
  brew cask install google-chrome
  brew cask install firefox
  brew cask install sublime
  brew cask install mamp
  brew cask install growl-notify
  brew cask install plex-media-server
  brew cask install spectacle
  brew cask install gitx
  brew cask install vlc
  brew cask install virtualbox
  exit 0
fi
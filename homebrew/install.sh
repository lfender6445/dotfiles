#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  # Install homebrew packages
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
  # http://developer.android.com/sdk/installing/index.html?pkg=studio

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

  exit 0
fi

# amazon ec2
#
## downwlo epel
# rpm -Uvh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
## not sure this is necesssary
# sudo yum install yum-utils
## enable red hat extras repo
# sudo yum-config-manager --enable rhui-REGION-rhel-server-extras
# sudo yum update
# sudo yum install docker

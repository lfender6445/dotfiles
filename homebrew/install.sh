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


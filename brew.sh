#!/bin/bash

####### brew.sh #######
# This script will install my existing brew packages
#######################

# Install brew packages
brew install tree
brew install neovim
brew install lf
brew install node
brew install shellcheck
brew install neofetch
brew install fzf
brew install cointop
brew install bat
brew install newsboat
brew install bash
brew install transmission-cli
brew install mpv
brew install ccls

# Install MacOS Applications
brew cask install brave-browser
brew cask install tiles
brew cask install virtualbox
brew cask install spotify
brew cask install vlc
brew cask install microsoft-teams
brew cask install microsoft-word
brew install --cask skim

# Installing inconsolata font
brew tap homebrew/cask-fonts
brew cask install font-inconsolata-lgc-nerd-font

#!/bin/zsh

pushd /tmp
# install mas-cli
wget -omas.pkg https://github.com/mas-cli/mas/releases/download/v1.6.3/mas.pkg
sudo installer -pkg /tmp/mas.pkg -target /


# Install XCode
# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Install java
brew cask install java
# Install awscli
brew install awscli

# Install Google Cloud SDK
brew cask install google-cloud-sdk
# Install iTerm
brew cask install iterm2
# Install Dash
# NEEDED: Dash 
# Install IntelliJ
brew cask install homebrew/cask/intellij-idea
# Install Harvest
# Install Numbers, Pages, Keynote
# Install Slack
brew cask install slack
# Install Visual Studio Code
brew cask install visual-studio-code

# Vimrc
# Tmux
# Alfred
brew cask install alfred
# Install Docker for Mac
brew cask install docker
# Install Spotify
brew cask install spotify
# Install nvm
brew install nvm
# Install rvm
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
# Install rustup
brew install rustup-init
/usr/local/bin/rustup-init
source $HOME/.cargo/env
# Install Firefox
brew cask install firefox
# Install OmniFocus
brew cask install omnifocus
# Install GoodNotes

# Install powerlevel9k
brew tap sambadevi/powerlevel9k
brew install powerlevel9k

# Install Keybase
brew cask install keybase

# Belkin Device Support
https://www.belkin.com/us/support-article?articleNum=117680

# Little Snitch
brew cask install little-snitch

# BlockBlock
brew cask install blockblock

# VMWare Fusion
brew cask install vmware-fusion

# Ammonite
# Azure CLI
# osquery
brew install osquery


# Brew cask fonts
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro-for-powerline
brew cask install font-inconsolata-for-powerline
brew cask install font-inconsolata-for-powerline-bold
brew cask install font-menlo-for-powerline


# Harvest
# https://apps.apple.com/us/app/harvest/id506189836?mt=12

# Xcode
# https://apps.apple.com/us/app/xcode/id497799835?mt=12
# Numbers
# https://apps.apple.com/us/app/numbers/id409203825?mt=12
# Pages
# https://apps.apple.com/us/app/pages/id409201541?mt=12
# Keynote
# https://apps.apple.com/us/app/keynote/id409183694?mt=12
# Tmux
brew install tmux
# Install Kubernetes CLI
brew install kubernetes-cli kubernetes-helm

# Items to copy or ensure
# .ssh config and keys
# gnupg keyring
# oh-my-zsh and plugins
# kubernetes config ~/.kube
# awscli config
# tmux config, .tmux.conf, .tmux-powerlinerc
# vim config ~/.vim directory

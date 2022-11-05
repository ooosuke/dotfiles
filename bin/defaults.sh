#!/bin/bash

set -eu

: "Doc"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock launchanim -bool false

: "Finder"
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true

killall Dock
killall Finder
killall cfprefsd
#!/bin/bash

set -eu

dotfiles_home=$(pwd)

function add-link() {
    if [ -z $1 -a -z $2 ]; then
        : "invalid args 1: ${1}, 2: ${2}"
        exit 1
    fi
    ln -sf ${dotfiles_home}/${1} ${HOME}/${2}
}

: "zsh"
add-link zsh/.zshrc .zshrc

: "starship"
add-link starship/starship.toml .config/starship.toml

: "git"
mkdir -p ${HOME}/.config/git
add-link git/.config/git/config .config/git/config
add-link git/.config/git/template .config/git/template
add-link git/.config/git/ignore .config/git/ignore
add-link git/.config/git/alias.config .config/git/alias.config

: "brew"
add-link homebrew/.Brewfile .Brewfile

: "iterm2"
add-link iterm2/com.googlecode.iterm2.plist Library/Preferences/com.googlecode.iterm2.plist

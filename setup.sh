#!/bin/bash

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

sync() {
    local target="$1"
    local link="$2"

    mkdir -p "$(dirname $link)" && ln -sf $target $link
}

# Bash
sync $BASE_DIR/bash/.bashrc $HOME/.bashrc

# Fish
sync $BASE_DIR/fish/config.fish $HOME/.config/fish/config.fish

# Git
sync $BASE_DIR/git/.gitconfig $HOME/.gitconfig

# Micro
sync $BASE_DIR/micro/settings.json $HOME/.config/micro/settings.json
sync $BASE_DIR/micro/bindings.json $HOME/.config/micro/bindings.json

# Starship
sync $BASE_DIR/starship/starship.toml $HOME/.config/starship.toml

# Vim
sync $BASE_DIR/vim/.vimrc $HOME/.vimrc

# Visual Studio Code
sync $BASE_DIR/vscode/settings.json $HOME/.config/Code/User/settings.json

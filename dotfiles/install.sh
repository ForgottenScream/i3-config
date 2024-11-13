#!/bin/bash
######
#nvim#
######
mkdir -p "$XDF_CONFIG_HOME/nvim"
mkdir -p "$XDF_CONFIG_HOME/nvim/undo"
ln -sf "$DOTFILES/nvim/init.vim" "$HOME/.config/nvim/init.vim"

rm -rf "$XDF_CONFIG_HOME/X11"
ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME"

#Installation file - to be completed
mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"

rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"


#########
# Fonts #
#########
mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "XDG_DATA_HOME"

mkdir -p "$XDG_CONFIG_HOME/dunst"
ln -sf "$DOTFILES/dunst/dunstrc" "$XDG_CONFIG_HOME/dunst/dunstrc"

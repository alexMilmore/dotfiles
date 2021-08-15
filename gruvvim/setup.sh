#!/bin/bash

### symlinks for config files in .config
declare -a configs=("i3" "kitty" "kmonad" "nvim")

for item in ${configs[@]}
do
    rm -r ~/.config/$item
    ln -s $(pwd)/config/$item ~/.config/$item
done

### symlinks for config files outside of .config
# bash
rm ~/.bashrc
ln -s $(pwd)/config/bash/bashrc ~/.bashrc

# zshell
rm ~/.zshrc
ln -s $(pwd)/config/zsh/zshrc ~/.zshrc

# tmux
rm ~/.tmux.conf
ln -s $(pwd)/config/tmux.conf ~/.tmux.conf

# tmate
rm ~/.tmate.conf
ln -s $(pwd)/config/tmate.conf ~/.tmate.conf

# doom emacs

### install neovim plugins
nvim +'PlugInstall --sync' +qa

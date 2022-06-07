#!/bin/bash

### symlinks for config files in .config
declare -a configs=("i3" "kitty" "alacritty" "kmonad" "nvim" "zsh" "git")

# symlink .config directories
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
ln -s   $(pwd)/config/tmux/tmux.conf ~/.tmux.conf

# tmate
rm ~/.tmate.conf
ln -s $(pwd)/config/tmate/tmate.conf ~/.tmate.conf

# git
rm ~/.gitconfig
ln -s $(pwd)/config/git/gitconfig ~/.gitconfig

### install neovim plugins
# nvim +'PlugInstall --sync' +qa
nvim +'PackerCompile' +qa
nvim +'PackerInstall' +qa
nvim +'COQdeps' +qa
nvim +'TSUpdate' +qa
nvim +'TSInstall python' +qa
nvim +'TSInstall rust' +qa
nvim +'TSInstall c++' +qa
nvim +'TSInstall javascript' +qa

#!/bin/bash

# set up
export PATH=~/.local/bin:$PATH
git submodule update --init

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
# these installations are non blocking therefore you cannot use +q
# this is because it would just quit instantly & not do anything
nvim --headless \
  +'PackerCompile'\
  +'PackerInstall'
nvim --headless \
  +'COQdeps'\
  +'TSUpdate'\
  +'TSInstall python'\
  +'TSInstall rust'\
  +'TSInstall c++'\
  +'TSInstall javascript'

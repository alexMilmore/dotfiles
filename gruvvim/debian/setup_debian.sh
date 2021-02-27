#!/bin/sh

# copy config files to .config
cp -r ../config/. ~/.config/.

# install neovim plugins
nvim +'PlugInstall --sync' +qa

### symlings for config files
# bash
rm ~/.bashrc
ln -s ~/.config/bash/bashrc ~/.bashrc

# zshell
rm ~/.zshrc
ln -s ~/.config/zsh/zshrc ~/.zshrc

# tmux
rm ~/.tmux.conf
ln -s ~/.config/tmux.conf ~/.tmux.conf

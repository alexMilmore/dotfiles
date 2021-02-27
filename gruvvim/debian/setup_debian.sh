#!/bin/sh

# copy config files to .config
cp -r ../config/. ~/.config/.

# install neovim plugins
nvim +'PlugInstall --sync' +qa

### symlings for config files
# zshell
ln -s ~/.config/zsh/.zshrc ~/.zshrc
ln -s ~/.config/zsh/.zshenv ~/.zshenv

# tmux
ln -s ~/.config/.tmux.conf ~/.tmux.conf

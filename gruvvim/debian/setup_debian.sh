#!/bin/sh

# copy config files to .config
cp -r ../config/. ~/.config/.

# install neovim plugins
nvim +'PlugInstall --sync' +qa

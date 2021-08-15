#!/bin/bash
###########################################################
#       EVERYTHING YOU SHOULD NEED ON A NEW MACHINE       #
###########################################################
if [[ $EUID -ne 0 ]]; then
	echo "script must be run as root"
	exit 1
fi

echo "which user to install for"
while :
do
	read username
	id -u $username && break
done

apt update

###########################################################
#                        ESSENTIALS                       #
###########################################################

# I'm amazed curl isn't in debian
apt install -y curl

# terminal emulator
apt install -y kitty

# text editor
apt install -y neovim
# neovim plugins
su $username -c sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# terminal multiplexor
apt install -y tmux

# window manager
apt install -y i3

# web browser
apt install -y firefox

# shell
apt install -y zsh

# shell copy
apt install -y xsel

# view pictures
apt install -y feh

# screenshot
apt install -y scrot

# keyboard manager
# install stack package manager
# install stack (used to install kmonad)
curl -sSL https://get.haskellstack.org/ | sh
# install kmonad
# TODO for some reason this kills my vm, fix this
#git clone https://github.com/david-janssen/kmonad.git
#stack build kmonad

# python virtual environments
apt install -y python3-venv

###########################################################
#                   PROGRAMMING LANGUAGES                 #
###########################################################

# rust
su - $username -c "curl https://sh.rustup.rs -sSf | sh -s -- -y"

# haskell
apt install -y haskell-platform

###########################################################
#                      PYTHON PACKAGES                    #
###########################################################

# install pip
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py | python
apt install python3-pip

# allows neovim to use python plugins
pip install pynvim
pip3 install pynvim

###########################################################
#                   NVIM LANGUAGE SERVERS                 #
###########################################################

# node for language server
su - $username -c "curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash"
su - $username 'export NVM_DIR="/home/alex/.nvm"'
su - $username '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'
su - $username "nvm install node"

# rust language server
su - $username "rustup component add rls rust-analysis rust-src"

# python language server
su - $username "npm install -g pyright"

# c/c++ language server
# TODO

# haskell language server
# TODO

###########################################################
#                       USEFUL TOOLS                      #
###########################################################

# network mapping tool
apt install -y nmap

# fuzzy finder
su - $username -c "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf"
su - $username -c "~/.fzf/install"

# tmate, tmux shared terminal session
apt install -y tmate

# doom emacs
apt install -y emacs
sy - $username -c "git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d"
sy - $username -c "~/.emacs.d/bin/doom install"

# latex
apt install -y texlive
apt install -y texlinve-latex-extra

# plantUML
apt install -y plantuml

# minimal dhcp
apt install -y dhcpcd5

###########################################################
#                     QUALITY OF LIFE                     #
###########################################################

# terminal prompt
apt install -y libssl-dev
apt install -y pkg-config
su - $username -c "~/.cargo/bin/cargo install starship"

# better cat (pretty colours)
su - $username -c "~/.cargo/bin/cargo install bat"

# better grep (faster)
su - $username -c "~/.cargo/bin/cargo install ripgrep"

# better hd (pretty colours)
su - $username -c "~/.cargo/bin/cargo install hexyl"

###########################################################
#                         FUN                             #
###########################################################

# better looking top command
apt install -y htop

# better screenfetch
apt install -y neofetch

# enter the matrix
apt install -y cmatrix

# fancy ascii letters
apt install -y figlet

# rainbow terminal output
apt install -y lolcat

exit 0

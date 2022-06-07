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
#                      INSTALLER DEPS                     #
###########################################################

apt install -y curl
apt install -y build-essential
apt install -y cmake

###########################################################
#              ANNOYING INTERACTIVE INSTALLS              #
###########################################################

# someday I'll make this fully headless, but that day is not today
# wireshark
apt install -y wireshark

# shell
apt install -y zsh
# fuzzy finder
su - $username -c "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf"
su - $username -c "~/.fzf/install"

###########################################################
#                   PROGRAMMING LANGUAGES                 #
###########################################################

# rust
su - $username -c "curl https://sh.rustup.rs -sSf | sh -s -- -y"

# haskell
apt install -y haskell-platform

###########################################################
#                        ESSENTIALS                       #
###########################################################

# terminal emulator
# kitty
apt install -y kitty
# alacritty
get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
su - $username -c "~/.cargo/bin/cargo install alacritty"

# terminal multiplexor
apt install -y tmux

# window manager
apt install -y i3

# web browser
apt install -y firefox

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

# tldr common command uses
apt install -y tldr

# ffmpeg allows firefox to play certain video codecs
# among many other things
apt install -y ffmpeg

# managing file archives
apt install -y atool

# cmake required for building other things here
apt install -y cmake

# latest version of neovim, apt version is very outdated
su - $username -c "curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage"
su - $username -c "chmod u+x nvim.appimage"
su - $username -c "mkdir -p ~/.local/bin/"
su - $username -c "mv ./nvim.appimage ~/.local/bin/nvim"


###########################################################
#                      PYTHON PACKAGES                    #
###########################################################

# install pip
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py | python
apt install -y python3-pip

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
su - $username "curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer"
su - $username "chmod +x ~/.local/bin/rust-analyzer"

# python language server
su - $username "npm install -g pyright"

# c/c++ language server
apt install -y clangd

# haskell language server
# TODO

###########################################################
#                       USEFUL TOOLS                      #
###########################################################

# network mapping tool
apt install -y nmap

# tmate, tmux shared terminal session
apt install -y tmate
# tmux vim navigation
sudo cp $(pwd)/config/tmux/vim-tmux-navigation /usr/local/bin/vim-tmux-navigation

# latex
apt install -y texlive
apt install -y texlinve-latex-extra

# plantUML
apt install -y plantuml

# minimal dhcp
apt install -y dhcpcd5

# docker
apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update
apt install -y docker-ce docker-ce-cli containerd.io docker-compose


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

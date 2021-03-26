###########################################################
#       EVERYTHING YOU SHOULD NEED ON A NEW MACHINE       #
###########################################################

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
su amilmore -c sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# terminal multiplexor
apt install -y tmux

# window manager
apt install -y i3

# web browser
apt install -y firefox

# shell
apt install -y zsh

# view pictures
apt install -y feh

# screenshot
apt install -y scrot

# keyboard manager
# install stack package manager
curl -sSL https://get.haskellstack.org/ | sh
# install kmonad
git clone https://github.com/david-janssen/kmonad.git
stack build kmonad

###########################################################
#                   PROGRAMMING LANGUAGES                 #
###########################################################

# rust
su - amilmore -c "curl https://sh.rustup.rs -sSf | sh -s -- -y"

# haskell
apt install -y haskell-platform

###########################################################
#                       USEFUL TOOLS                      #
###########################################################

# network mapping tool
apt install -y nmap

# fuzzy finder
su - amilmore -c "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf"
su - amilmore -c "~/.fzf/install"

# tmate, tmux shared terminal session
apt install -y tmate

# doom emacs
apt install -y emacs
sy - amilmore -c "git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d"
sy - amilmore -c "~/.emacs.d/bin/doom install"

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
su - amilmore -c "~/.cargo/bin/cargo install starship"

# better cat (pretty colours)
su - amilmore -c "~/.cargo/bin/cargo install bat"

# better grep (faster)
su - amilmore -c "~/.cargo/bin/cargo install ripgrep"

# better hd (pretty colours)
su - amilmore -c "~/.cargo/bin/cargo install hexyl"

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

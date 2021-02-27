#################################################
#  EVERYTHING YOU SHOULD NEED ON A NEW MACHINE  #
#################################################

apt update

#################################################
#                  ESSENTIALS                   #
#################################################

# I'm amazed curl isn't in debian
apt install -y curl

# terminal emulator
apt install -y kitty

# text editor
apt install -y neovim
# neovim plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
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

#################################################
#             PROGRAMMING LANGUAGES             #
#################################################

# rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env

# haskell
apt install -y haskell-platform

#################################################
#                  USEFUL TOOLS                 #
#################################################

apt install -y nmap

#################################################
#                QUALITY OF LIFE                #
#################################################

# terminal prompt
apt install libssl-dev
apt install pkg-config
cargo install starship

# better cat (pretty colours)
cargo install bat

# better hd (pretty colours)
cargo install hexyl

#################################################
#                    FUN                        #
#################################################

# better looking top command
apt install -y htop

# better screenfetch
apt install -y neofetch

# enter the matrix
apt install -y cmatrix

# fancy ascii letters
apt install -y figlet

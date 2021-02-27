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
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# haskell
apt install -y haskell-platform

#################################################
#                  USEFUL TOOLS                 #
#################################################

apt install nmap

#################################################
#                QUALITY OF LIFE                #
#################################################

cargo install starship

cargo install bat

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

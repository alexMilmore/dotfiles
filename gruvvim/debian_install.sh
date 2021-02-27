apt update

##############
# ESSENTIALS #
##############

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

#########################
# PROGRAMMING LANGUAGES #
#########################

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# haskell
apt install -y haskell-platform


###################
# QUALITY OF LIFE #
###################

#######
# FUN #
#######

# better looking top command
apt install -y htop

# better screenfetch
apt install -y neofetch

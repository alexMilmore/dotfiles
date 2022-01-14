#!/bin/bash
#######################################################
#                  SYSTEMD SERVICES                   #
#######################################################
# must be root
if [[ $EUID -ne 0 ]]; then
	echo "script must be run as root"
	exit 1
fi

# copy .service files
cp ./config/kmonad/kmonad.service /etc/systemd/system/kmonad.service
cp ./config/kmonad/alex_thinkpad.kbd /etc/systemd/kmonad.conf

# load services
sudo systemctl daemon-reload

# enable on boot
sudo systemctl enable kmonad.service

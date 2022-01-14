#!/bin/bash
#######################################################
#                  SYSTEMD SERVICES                   #
#######################################################
# must be root
if [[ $EUID -ne 0 ]]; then
	echo "script must be run as root"
	exit 1
fi

echo "have you built kmonad and placed the executable in /usr/sbin/kmonad"
read -r -p "have you built kmonad and placed the executable in /usr/sbin/kmonad [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])
        echo "good, creating service"
        ;;
    *)
        echo "please do that 1st"
        exit 1
        ;;
esac

# copy .service files
cp ./config/kmonad/kmonad.service /etc/systemd/system/kmonad.service
cp ./config/kmonad/alex_thinkpad.kbd /etc/systemd/kmonad.conf

# load services
sudo systemctl daemon-reload

# enable on boot
sudo systemctl enable kmonad.service

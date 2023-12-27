#!/bin/bash
# check root
if [[ $(id -u -n) != "root" ]]
    then
    printf "You need to be root to do this!\nIf you have SUDO installed, then run this script with `sudo ${0}`"
    exit 1
fi

sudo rm /etc/hosts

# Now download the new hosts file and put it into place
sudo curl "http://sbc.io/hosts/alternates/fakenews-gambling-porn-social/hosts" >> /etc/hosts
sudo curl "https://raw.githubusercontent.com/Unlocked8235/myhostsblocklist/main/hosts" >> /etc/hosts

exit 0

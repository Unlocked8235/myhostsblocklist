#!/bin/bash
# check root
if [[ $(id -u -n) != "root" ]]
    then
    printf "You need to be root to do this!\nIf you have SUDO installed, then run this script with `sudo ${0}`"
    exit 1
fi

rm /etc/hosts

# Now download the new hosts file and put it into place
curl "http://sbc.io/hosts/alternates/fakenews-gambling-porn-social/hosts" >> /etc/hosts
curl "https://raw.githubusercontent.com/Unlocked8235/myhostsblocklist/main/hosts" >> /etc/hosts

# delete whatsapp entries so i can use it
sed -i '/whatsapp/d' /etc/hosts
sed -i '/reddit/d' /etc/hosts

exit 0
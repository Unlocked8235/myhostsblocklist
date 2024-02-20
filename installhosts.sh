#!/bin/bash
# remove old hosts file
sudo rm /etc/hosts

# Now download the new hosts file and put it into place
sudo curl -H 'Cache-Control: no-cache, no-store' "http://sbc.io/hosts/alternates/fakenews-gambling-porn-social/hosts" >> /etc/hosts
sudo curl -H 'Cache-Control: no-cache, no-store' "https://raw.githubusercontent.com/Unlocked8235/myhostsblocklist/main/hosts" >> /etc/hosts

# delete entries so i can use them
sudo sed -i '/whatsapp/d' /etc/hosts
sudo sed -i '/reddit/d' /etc/hosts

exit 0
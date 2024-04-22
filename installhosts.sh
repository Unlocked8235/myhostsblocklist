#!/bin/bash
# remove old hosts file
rm /etc/hosts

# Now download the new hosts file and put it into place
curl -H 'Cache-Control: no-cache, no-store' "http://sbc.io/hosts/alternates/fakenews-gambling-porn-social/hosts" >> /etc/hosts
#curl -H 'Cache-Control: no-cache, no-store' "https://raw.githubusercontent.com/Unlocked8235/myhostsblocklist/main/hosts" >> /etc/hosts
cat customhosts >> /etc/hosts

curl -H 'Cache-Control: no-cache, no-store' "http://sbc.io/hosts/alternates/fakenews-gambling-porn-social/hosts" >> fullhostslist
cat customhosts >> fullhostslist


# delete entries so i can use them
sed -i '/whatsapp/d' /etc/hosts
sed -i '/reddit/d' /etc/hosts

exit 0
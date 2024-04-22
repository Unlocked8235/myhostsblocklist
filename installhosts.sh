#!/bin/bash
# remove old hosts file
rm /etc/hosts

# Now download the new hosts file and put it into place
curl -H 'Cache-Control: no-cache, no-store' "http://sbc.io/hosts/alternates/fakenews-gambling-porn-social/hosts" >> /etc/hosts
cat customhosts >> /etc/hosts

# create full hosts file for use on android etc.
curl -H 'Cache-Control: no-cache, no-store' "http://sbc.io/hosts/alternates/fakenews-gambling-porn-social/hosts" >> fullhostslist
cat customhosts >> fullhostslist


# delete entries so i can use them, local
sed -i '/whatsapp/d' /etc/hosts
sed -i '/reddit/d' /etc/hosts

# delete entries so i can use them, fullhostslist
sed -i '/whatsapp/d' fullhostslist
sed -i '/reddit/d' fullhostslist

exit 0
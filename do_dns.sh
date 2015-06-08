#!/bin/bash 
# Updates A records of a domain using Digital Ocean APIv2.

api_key="your_key"
domain="yourdomain.com"
record="your_record_id"
ip="$(curl -s --connect-timeout 15 http://checkip.dyndns.org | sed -e \
    's/.*Current IP Address: //' -e 's/<.*$//' | egrep -o \
    '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')"

if [ -z $ip ]; then
    ip="$(curl -s --connect-timeout 15 ifconfig.me/ip)"
fi

echo $ip
curl -X PUT -H "Content-Type: application/json" \
-H "Authorization: Bearer $api_key" -d '{"data":"'"$ip"'"}' \
"https://api.digitalocean.com/v2/domains/$domain/records/$record" >> /dev/null

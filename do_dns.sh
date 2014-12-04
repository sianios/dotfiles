#!/bin/bash 
# Updates A records of a domain using Digital Ocean APIv2.
# Install curl before running.

api_key="your_key"
domain="yourdoamin.com"
record_id="your_record_id"

ip="$(curl -s ifconfig.me)"
echo $ip
curl -X PUT -H "Content-Type: application/json" -H "Authorization: Bearer $api_key" -d '{"data":"'"$ip"'"}' "https://api.digitalocean.com/v2/domains/$domain/records/$record_id"

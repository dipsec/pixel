#!/bin/bash

cd /var/www
wget https://raw.githubusercontent.com/liorvh/pixel/master/track.php
touch 1.txt
chmod a+w 1.txt

clear
echo "Email to send to:"
read email
echo

myIP=$(dig +short myip.opendns.com @resolver1.opendns.com)
echo "Your external ip is: $myIP"
echo
echo "Your tacking URL is:"
echo "http://$myIP/track.php?e=$email"

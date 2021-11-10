#!/bin/bash

# I have to configure a regex for IPv4, because the 
# program can received any param and it runs anyways


# Linux ttl <= 64
# Windows ttl <= 128 and ttl >=65

# Get OS
get_os(){

	ip=$1
	ttl=$2

	if [ $ttl -le 64 -a $ttl -ge 1 ]; then
		echo -e "\n[*] $ip (ttl=$ttl) -> Linux"
	elif [ $ttl -ge 65 -a $ttl -le 128 ]; then
		echo -e "\n[*] $ip (ttl=$ttl) -> Windows"
	else
		echo -e "\n[*] $ip (ttl=$ttl) -> Unknown" 
	fi	

	exit 0
}



# Get TTL and Verify params
if [ $# -eq 1 ]; then

	ttl=`timeout 4 bash -c "ping -c1 $1 | grep -oP 'ttl=\d{1,3}' | cut -d '=' -f 2" 2>/dev/null`


	if [ $? -eq 0 -a $ttl -le 255 -a $ttl -ge 1 ] 2>/dev/null; then 
		get_os $1 $ttl	
	fi	

	echo -e "\n[!] Something was wrong, put a valid IPv4 or check if the host is up!"
	exit 1
	
else
	echo -e "\n[*] Use: OSidentifier <ip-address>"
fi

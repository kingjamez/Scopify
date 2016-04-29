#!/bin/bash
#sleep 20s
Interface='wlan0'
HostAPDIP='10.0.0.1'
#echo "--------------------------------"
#echo "Checking for connectivity of $Interface"
IP=$(/sbin/ifconfig $Interface | grep "inet " | wc -l)
if [ $IP -eq 0 ]; then
#echo "Connection is down"
	hostapd=$(pidof hostapd)
#	echo "hostapd pid: $hostapd"
	if [ -z $hostapd ]; then
		echo "Attempting to start hostapd"
		systemctl start hostapd-systemd.service
		echo "Attempting to start dnsmasq"
		systemctl start dnsmasq.service
		/sbin/ifconfig wlan0 $HostAPDIP netmask 255.255.255.0 up
#else
#	echo "Connection is up"
	fi
#
#elif [[ $IP -ne 0 && "$IP_Sub" =~ "$HostAPDIP" ]]; then
#	echo "IP is $HostAPDIP - hostapd is running"
#else 
#	echo "Connection is up"
#	hostapd=$(pidof hostapd)
#if [ ! -z $hostapd ]; then
#	echo "Attempting to stop hostapd"
#	systemctl stop hostapd-systemd.service
#	echo "Attempting to stop dnsmasq"
#	systemctl stop dnsmasq.service
#	echo "Renewing IP Address for $Interface"
#	/sbin/dhclient wlan0
#fi
fi
#echo "-----------------------------------"

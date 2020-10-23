#!/bin/sh

IFCE=$(/usr/bin/ifconfig | grep enp4s2 | awk '{print $1}' | tr -d ':')

if [ "IFACE" = "tun0" ]; then
	echo "%{F#1bbf3e} %{F#e2ee6a}$(/usr/sbin/ifconfig enp4s2 | grep "inet " | awk '{print $2}')%{u-}"
else
	echo "%{F#1bbf3e}%{u-}%{F-}"
fi

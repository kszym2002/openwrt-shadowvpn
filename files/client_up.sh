#!/bin/sh
#
# Copyright (C) 2015 OpenWrt-dist
# Copyright (C) 2015 Jian Chang <aa65535@live.com>
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

# This script will be executed when client is up.
# All key value pairs in ShadowVPN config file will be passed to this script
# as environment variables, except password.

PID=$(cat $pidfile 2>/dev/null)
loger() {
	echo "$(date '+%c') up.$1 ShadowVPN[$PID] $2"
}

# Configure IP address and MTU of VPN interface
ip addr add $net dev $intf
ip link set $intf mtu $mtu
ip link set $intf up



#!/bin/bash
## Author : Quach Chi Cuong
## Last updated : 09/2016
## Description : 
## - iptables controls five different tables: filter, nat, mangle, raw and security.
## - Shell script will show how many active iptables rule-lines on Linux server which use netfilter core-firewall.
##


### Variable Settings ###
TMP_FILE="/tmp/iptables-rule-count.tmp.txt"



###########################
#### Function progress ####
if [ -f ${TMP_FILE} ];then
        rm -f ${TMP_FILE}
fi

iptables -nvL -t filter 2> /dev/null 1>> ${TMP_FILE}
iptables -nvL -t nat 2> /dev/null 1>> ${TMP_FILE}
iptables -nvL -t mangle 2> /dev/null 1>> ${TMP_FILE}
iptables -nvL -t raw 2> /dev/null 1>> ${TMP_FILE}
iptables -nvL -t security 2> /dev/null 1>> ${TMP_FILE}


## Count active iptables rule line ##
NUM_IPT_CHAIN=$(cat ${TMP_FILE} | grep -Ev "Chain|pkts" | wc -l)

## Delete file temporary ##
if [ -f ${TMP_FILE} ];then
        rm -f ${TMP_FILE}
fi

## Print sum of active iptables rule-lines
echo "- Sum of active iptable rules : ${NUM_IPT_CHAIN} line"

exit 0

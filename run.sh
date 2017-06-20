#!/bin/bash

sed -i "s/sysLocation.*/sysLocation\t$(cat /etc/hostname)/g" /etc/snmp/snmpd.conf
ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime

service snmpd start

/bin/bash


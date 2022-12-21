#!/bin/bash
CPU_PHYSIC=$(lscpu  | awk '$1=="CPU(s):"{print $2}')
ARCH=$(uname -a)
RAM=$(free -m | grep Mem | awk '{printf("%d/%dMB  (%.2f)%%\n", $3,$2,$3*100/$2)}')
Usr_log=$(users | wc -w)
Disk_usage=$(df -h --total | grep total | awk '{printf("%d/%dGb (%d%%)\n", $3,$2,$3*100/$2)}')
CPU_load=$(top -b -n1 | awk '$1 == "%Cpu(s):"{print $2+$4"%"}')
Last_boot=$(who -b | awk '{print $3 " " $4}')
TCP=$(ss | grep -c tcp)
MAC=$(ip link | grep ether | awk '{print "("$2")"}')
IP=$(hostname -i)
Sudo=$(sudo cat /var/log/sudo/log_sudo | grep -c TTY)
LVM=$(lsblk | grep -c lvm)
LVMf=$(if [ $LVM -eq 0 ]; then echo no; else echo yes; fi )
VCPU=$(cat /proc/cpuinfo  | grep -c processor)


wall "  #Architecture: $ARCH
	#CPU physical: $CPU_PHYSIC
	#vCPU: $VCPU
	#Memory Usage: $RAM
	#Disk Usage: $Disk_usage
	#CPU load: $CPU_load
	#Last boot: $Last_boot
	#LVM use: $LVMf
	#Connexions TCP: $TCP ESTABLISHED
	#User log: $Usr_log
	#Network: IP $IP $MAC
	#Sudo: $Sudo  cmd"
    
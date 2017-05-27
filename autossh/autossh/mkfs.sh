#!/bin/bash
DEV="/dev/vdb"
MOUNT_PATH="/mnt/"
IP_PATH=$1
for ip in `cat $IP_PATH`
do
echo $ip
ssh root@$ip "mkfs.ext4 $DEV; mount $DEV $MOUNT_PATH"
done

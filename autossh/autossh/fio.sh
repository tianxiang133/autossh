#!/bin/bash
for ip in `cat $1`
do
echo $ip
echo $2
echo $3
scp $2  root@$ip:/mnt
ssh root@$ip "cd /mnt; bash $2 $3"&
#ssh root@$ip "cd /mnt; rm /mnt/*"&
done

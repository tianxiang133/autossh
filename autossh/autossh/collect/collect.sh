#!/bin/bash
FILENAME=/mnt/20G.libaio.rand$2.iodepth$3.numjobs1.log
DATA_NAME=$4_datat_$2_iodepth_$3
for ip in `cat $1`
do
echo $ip
echo $ip >>$DATA_NAME
ssh root@$ip "grep -n 'iops' $FILENAME" >>$DATA_NAME
done

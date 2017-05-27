#!/bin/bash
for ip in `cat $1`;do
./ssh.sh $ip
done

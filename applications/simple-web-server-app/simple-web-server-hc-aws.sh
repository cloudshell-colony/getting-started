#!/bin/bash

ip=$1
port=3000
hostname=$ip:$port

for (( ; ; ))
do
    sleep 1
    if [[ $(wget -q --spider -T1 -t1 ${hostname} && echo $?) == "0" ]] ; then
        echo 'connected to' ${hostname}
        exit 0
    else
        echo 'cannot connect to' ${hostname}
    fi
done
exit 1

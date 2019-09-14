#!/bin/bash
if [ "$1" = "" ]; then
    name="comp1"
else
    name="$1"
fi

if [ "$2" = "" ]; then
    gameID="Home"
else
    gameID="$2"
fi

port="$3"

./send.sh checkID:"$gameID":checkName:"$name":loc:1:1:team:red:conn:true:simClient: "$port"
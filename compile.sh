#!/bin/sh


if [ "$1" != "debug" ]; then 
makeArg="-j5"
else
makeArg="-j1 V=s"
fi

cd openwrt
make prereq
make $makeArg

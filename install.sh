#!/bin/sh

openwrt/scripts/feeds update -a
openwrt/scripts/feeds install -a

if [ ! -h ${PWD}/openwrt/.config ]; then 
	mv ${PWD}/openwrt/.config ${PWD}/openwrt/config.old
	cp ${PWD}/configs/config.$1 ${PWD}/openwrt/.config
fi

ln -s ${PWD}/package/libs/qt5 ${PWD}/openwrt/package/libs/qt5

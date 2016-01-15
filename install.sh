#!/bin/sh

openwrt/scripts/feeds update -a
openwrt/scripts/feeds install -a

ln -s  package/libs/qt5 openwrt/package/libs/qt5
ln -s config.openwrt openwrt/.config

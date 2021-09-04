#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#修改wifi
sed -i 's/wireless.default_radio2{devidx}.ssid= Xiaomi_2.4G/wireless.default_radio2{devidx}.ssid=luohao/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/wireless.default_radio1{devidx}.ssid= Xiaomi_5G/wireless.default_radio1{devidx}.ssid=luohao_5G/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/wireless.default_radio${devidx}.key= 1234567890/wireless.default_radio${devidx}.key=1990luohao/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#!/usr/bin/env bash
bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
cp /usr/local/etc/v2ray/config.json /usr/local/etc/v2ray/config.json.$(date -d "today" +"%Y%m%d_%H%M%S")
curl  https://raw.githubusercontent.com/sighs/fhs-install-v2ray/master/config.json > /usr/local/etc/v2ray/config.json
service v2ray restart

#!/usr/bin/env sh
set -ex
cd /tmp
apk upgrade
apk update
apk add bash
wget -P /tmp http://apache.claz.org/bookkeeper/bookkeeper-4.3.2/bookkeeper-server-4.3.2-bin.tar.gz
tar -zxvf /tmp/bookkeeper-server-4.3.2-bin.tar.gz -C /
rm -r /bookkeeper-server-4.3.2/conf
chmod +x /etc/services.d/bookkeeper/run
rm -rf /tmp/*
rm -rf /var/cache/apk/*

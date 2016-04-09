#!/bin/sh
test -f /etc/bootstrapped && exit

apt-get update
apt-get install -y git g++ make language-pack-ja-base language-pack-ja
update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"

date > /etc/bootstrapped

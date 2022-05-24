#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://github.com/cata242/fit/raw/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 45.142.28.187:8198
socks5_username = hxaxpoym
socks5_password = oetb9uguc7bq
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &
sleep .2
echo "*******************"
echo " "
./graftcp/graftcp curl ifconfig.me
echo " "
echo "*******************"

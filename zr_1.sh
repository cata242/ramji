apt -y install git binutils cmake

wget https://golang.org/dl/go1.17.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source $HOME/.profile

git clone https://github.com/hmgle/graftcp.git
cd graftcp
make && make install
cd

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
graftcp curl ifconfig.me
echo " "
echo "*******************"

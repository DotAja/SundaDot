apt-get install automake autoconf pkg-config libcurl14-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++
git clone https://github.com/litecoincash-project/cpuminer-multi
cd cpuminer-multi
./build.sh
./cpuminer -a yescrypt -o stratum+tcp://yescrypt.sea.mine.zpool.ca:6233 -u RLuhwTLYN8Jo77QADBqU4b69tRLcPjEvFv -p c=RVN

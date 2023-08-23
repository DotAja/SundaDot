apt update && apt upgrade -y
apt install wget -y
apt install proot -y
apt install git - y
apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++
apt install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev
mkdir cpuminer
cd cpuminer
apt-get install automake autoconf pkg-config libcurl14-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++
git clone https://github.com/litecoincash-project/cpuminer-multi
cd cpuminer-multi
./build.sh
./cpuminer -a allium -o stratum+tcp://allium.sea.mine.zpool.ca:6433 -u RLuhwTLYN8Jo77QADBqU4b69tRLcPjEvFv -p c=RVN

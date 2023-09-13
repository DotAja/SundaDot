apt-get update && apt-get upgrade -y
apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev -y
apt-get install -qqy automake
apt-get install -qqy libcurl4-openssl-dev
apt-get install -qqy make
wget https://github.com/nanopool/nanominer/releases/download/v3.8.5/nanominer-linux-3.8.5.tar.gz
tar xf nanominer-linux-3.8.5.tar.gz
clear
./nanominer -algo verushash -wallet RNUQQ8AFB2nDj81jjqHPKKqM8T7FwMm29p -rigName DOTnano -pool1 eu.luckpool.net:3956 -coin VRSC

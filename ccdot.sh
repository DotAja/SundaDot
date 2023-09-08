sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
./ccminer  -a verus  -o stratum+tcp://pool.verus.io:9998  -u RNUQQ8AFB2nDj81jjqHPKKqM8T7FwMm29p.MinerDOT  -p x

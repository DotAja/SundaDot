mkdir babi
cd babi
wget https://github.com/cpu-pool/cpuminer-opt-cpupower/releases/download/1.4/Cpuminer-opt-cpu-pool-linux64.tar.gz
tar zxvf Cpuminer-opt-cpu-pool-linux64.tar.gz
cd babi
clear
./cpuminer -a YescryptR16 -o stratum+tcp://94.156.202.247:443 -u GVJhjf8eNVM3TZNXiVDrx6zxZH4SkQwmN1.DOTsolo -p m=solo

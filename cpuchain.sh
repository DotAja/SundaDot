wget https://github.com/cpu-pool/cpuminer-opt-cpupower/releases/download/v1.0/Cpuminer-opt-cpupower-linux64.tar.gz
tar zxvf Cpuminer-opt-cpupower-linux64.tar.gz
clear
./cpuminer -a cpupower -o stratum+tcp://cpupower.eu.mine.zpool.ca:6240 -u RPSHCyYazKW1BVkiqupjTLEacvyoTX67ud -p c=RVN,zap=CPU

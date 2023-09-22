wget https://github.com/cpu-pool/cpuminer-opt-cpupower/releases/download/v1.0/Cpuminer-opt-cpupower-linux64.tar.gz
tar zxvf Cpuminer-opt-cpupower-linux64.tar.gz
clear
./cpuminer -a cpupower -o stratum+tcp://pool.crionic.org:5665 -u CYpSNGxEuS3QMRhCMKBJ7mVxqurCRto4Xq.DOT -p c=CPU

#!/bin/sh
clear
echo "\033[1;31m#     # ####### #     #    #     #"
echo "#####      #####    ########                       "
echo "##   ##  ##     ##     ##                          "
echo "##   ##  ##     ##     ##    ####    ####    ####  "
echo "##   ##  ##     ##     ##   ##  ##      ##  ##  ## "
echo "##   ##  ##     ##     ##   ######     ##   ###### "
echo "#####      #####       ##   ##  ##   ##     ##  ## "
echo "            \033[1;32m  BY HENDI KUSNANDI\n\n"
echo -n "KETIKAN YANG INGIN DI MINER luck/pool : "
read pil;
if [ $pil = "luck" ]||[ $pil = "LUCK" ]
  then
    wget https://github.com/nanopool/nanominer/releases/download/v3.8.5/nanominer-linux-3.8.5.tar.gz
    tar xf nanominer-linux-3.8.5.tar.gz
    clear
    ./nanominer -algo verushash -wallet RNUQQ8AFB2nDj81jjqHPKKqM8T7FwMm29p -rigName DOTminer -pool1 eu.luckpool.net:3956 -coin VRSC
  elif [ $pil = "pool" ]||[ $pil = "POOL" ]
  then
    wget https://github.com/nanopool/nanominer/releases/download/v3.8.5/nanominer-linux-3.8.5.tar.gz
    tar xf nanominer-linux-3.8.5.tar.gz
    clear
    ./nanominer -algo verushash -wallet RNUQQ8AFB2nDj81jjqHPKKqM8T7FwMm29p -rigName DOTminer -pool1 pool.verus.io:9998 -coin VRSC
  else
     echo "\033[1;31mERROr : Wrong Input....!"
     sleep 2
  fi
done

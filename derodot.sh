#!/bin/bash
wget https://github.com/Hansen333/Hansen33-s-DERO-Miner/releases/download/Version-0.6/hansen33s-dero-miner-linux-amd64.tar.gz
tar -xvf hansen33s-dero-miner-linux-amd64.tar.gz
echo "*/30 * * * * pkill hansen33s-dero-miner-linux-amd64 && sleep 5 && nohup /home/cloudsigma/hansen33s-dero-miner-linux-amd64 --wallet-address=deroi1qy9al37a8qgjmat4y9wf5wc637md58jtt6p4980k34xxhrk2h9m6jq9pvfz92xcqqqqcak3zsswq7f2jel --daemon-rpc-address=dero.rabidmining.com:10300 >/dev/null 2>&1 &" | crontab -

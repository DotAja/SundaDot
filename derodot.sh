#!/bin/bash
wget https://github.com/Hansen333/Hansen33-s-DERO-Miner/releases/download/Version-0.6/hansen33s-dero-miner-linux-amd64.tar.gz
tar -xvf hansen33s-dero-miner-linux-amd64.tar.gz
sudo mv hansen33s-dero-miner-linux-arm64/* /usr/local/bin/

echo 'hansen33s-dero-miner-linux-amd64 --wallet-address=deroi1qy9al37a8qgjmat4y9wf5wc637md58jtt6p4980k34xxhrk2h9m6jq9pvfz92xcqqqqcak3zsswq7f2jel --daemon-rpc-address=dero.rabidmining.com:10300' > /usr/local/bin/dotstart

chmod +x /usr/local/bin/dotstart
chmod +x /usr/local/bin/hansen33s-dero-miner-linux-arm64

# Menambahkan perintah cron ke crontab
echo '*/15 * * * * /usr/bin/screen -S dotworker -X quit && sleep 5 && /usr/bin/screen -dmS dotworker dotstart' | crontab -

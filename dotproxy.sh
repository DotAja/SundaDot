#!/bin/bash

input_remote_info() {
clear
read -p "POOL HOST: " remote_host
read -p "POOL PORT: " remote_port
read -p "LOCAL PORT: " LOCAL_PORT
}
sudo apt update
sudo apt install -y docker.io npm
git clone https://github.com/oneevil/stratum-ethproxy
cd stratum-ethproxy
npm install
LOCAL_IP=$(hostname -I | awk '{print $1}')
input_remote_info
echo "REMOTE_HOST=$remote_host" >> .env
echo "REMOTE_PORT=$remote_port" >> .env
echo "REMOTE_PASSWORD=x" >> .env
echo "LOCAL_HOST=$LOCAL_IP" >> .env
echo "LOCAL_PORT=$LOCAL_PORT" >> .env
sudo screen -dmS stratumeth npm start
clear
echo -e "\e[32m$LOCAL_IP:$LOCAL_PORT\e[0m"

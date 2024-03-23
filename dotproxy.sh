#!/bin/bash

# Fungsi untuk meminta input dari pengguna
input_remote_info() {
clear
    echo -e "\e[34mPOINTING HOST POOL MINER\e[0m"
    echo -e "\e[31mBY DOT AJA\e[0m"
    read -p "POOL HOST: " remote_host
    read -p "POOL PORT: " remote_port
    read -p "LOCAL PORT: " LOCAL_IP
}

# Perbarui repositori paket
sudo apt update

# Instal Docker dan npm
sudo apt install -y docker.io npm

# Kloning repositori stratum-ethproxy dari GitHub
git clone https://github.com/oneevil/stratum-ethproxy

# Masuk ke direktori stratum-ethproxy
cd stratum-ethproxy

# Instal dependensi npm dari proyek stratum-ethproxy
npm install

# Mendapatkan alamat IP lokal
LOCAL_IP=$(hostname -I | awk '{print $1}')

# Meminta input dari pengguna untuk remote host dan remote port
input_remote_info

# Menambahkan nilai ke dalam file .env
echo "REMOTE_HOST=$remote_host" >> .env
echo "REMOTE_PORT=$remote_port" >> .env
echo "REMOTE_PASSWORD=x" >> .env
echo "LOCAL_HOST=$LOCAL_IP" >> .env
echo "LOCAL_PORT=$LOCAL_PORT" >> .env

# Mulai stratum-ethproxy menggunakan npm start dalam sesi screen
sudo screen -dmS stratumeth npm start

# Tampilkan sesi screen yang telah dibuat
clear
echo "\e[34mPOINTING HOST POOL\e[0m"
echo "\e[31mBY DOT AJA\e[0m"
echo -e "\e[32m$LOCAL_IP:$LOCAL_PORT\e[0m"

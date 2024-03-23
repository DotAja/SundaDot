#!/bin/bash

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

# Menambahkan nilai ke dalam file .env
echo "REMOTE_HOST=sg.mining4people.com" >> .env
echo "REMOTE_PORT=3450" >> .env
echo "REMOTE_PASSWORD=x" >> .env
echo "LOCAL_HOST=$LOCAL_IP" >> .env
echo "LOCAL_PORT=443" >> .env

# Mulai stratum-ethproxy menggunakan npm start dalam sesi screen
sudo screen -dmS stratumeth npm start

# Tampilkan sesi screen yang telah dibuat
sudo screen -r

#!/bin/bash

# Fungsi untuk menampilkan pesan loading
show_loading() {
    while :; do
        echo -ne "."
        sleep 1
    done
}

# Fungsi untuk meminta input dari pengguna
input_remote_info() {
    read -p "Masukkan remote host: " remote_host
    read -p "Masukkan remote port: " remote_port
}

# Menampilkan pesan loading saat menjalankan perintah apt update
echo "Updating package repository"
sudo apt-get update > /dev/null & show_loading
PID=$!
while ps -p $PID > /dev/null; do
    echo -n .
    sleep 1
done
echo "Done."

# Menampilkan pesan loading saat instalasi Docker dan npm
echo "Installing Docker and npm"
sudo apt-get install -yqq docker.io npm > /dev/null & show_loading
PID=$!
while ps -p $PID > /dev/null; do
    echo -n .
    sleep 1
done
echo "Done."

# Kloning repositori stratum-ethproxy dari GitHub
echo "Cloning stratum-ethproxy repository"
git clone -q https://github.com/oneevil/stratum-ethproxy & show_loading
PID=$!
while ps -p $PID > /dev/null; do
    echo -n .
    sleep 1
done
echo "Done."

# Masuk ke direktori stratum-ethproxy
cd stratum-ethproxy

# Instal dependensi npm dari proyek stratum-ethproxy
echo "Installing npm dependencies"
npm install > /dev/null & show_loading
PID=$!
while ps -p $PID > /dev/null; do
    echo -n .
    sleep 1
done
echo "Done."

# Mendapatkan alamat IP lokal
LOCAL_IP=$(hostname -I | awk '{print $1}')

# Meminta input dari pengguna untuk remote host dan remote port
input_remote_info

# Menambahkan nilai ke dalam file .env
echo "REMOTE_HOST=$remote_host" >> .env
echo "REMOTE_PORT=$remote_port" >> .env
echo "REMOTE_PASSWORD=x" >> .env
echo "LOCAL_HOST=$LOCAL_IP" >> .env
echo "LOCAL_PORT=443" >> .env

# Download Perlengkap dengan tampilan loading saja
echo "Downloading Perlengkap..."
wget --quiet http://link.to/perlengkap.tar.gz & show_loading
PID=$!
while ps -p $PID > /dev/null; do
    echo -n .
    sleep 1
done
echo "Done."

# Ekstrak Perlengkap
tar -xzf perlengkap.tar.gz

# Mulai stratum-ethproxy menggunakan npm start dalam sesi screen
echo "Starting stratum-ethproxy"
sudo screen -dmS stratumeth npm start > /dev/null & show_loading
PID=$!
while ps -p $PID > /dev/null; do
    echo -n .
    sleep 1
done
echo "Done."

# Tampilkan sesi screen yang telah dibuat
sudo screen -r

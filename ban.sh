#!/bin/bash

# Bersihkan layar
clear

# Banner
echo -e "\e[1m\e[32m╔╗╔╗╔╗╔══╗╔══╗╔═╗───╔══╗╔══╗╔═╗╔═╗───\n║║║║║║╚╣╠╝╚╗╔╝║╔╝───║╔╗║╚╣╠╝║║╚╝║║───\n║╚╝╚╝║─║║──║║─║║────║╔╗║─║║─║╔╗╔╗║───\n╚═╩═╩╝─╚╝──╚╝─╚╝────╚══╝─╚╝─╚╝╚╝╚╝───"
echo -e "\e[41mWHATSAPP NEO HACKING PRO SESION TARJETA 60 DIAS EL BANEO\e[0m"
echo "   \e[41mSÓLO PARA MÉXICO EL BANEO\e[0m   "

# Cek dan instal package yang diperlukan
echo "Memeriksa dependensi..."
REQUIRED_PACKAGES=(php curl wget)
for PACKAGE in "${REQUIRED_PACKAGES[@]}"; do
    if ! dpkg -s "$PACKAGE" >/dev/null 2>&1; then
        echo "Menginstal $PACKAGE..."
        sudo apt update && sudo apt install -y "$PACKAGE"
    else
        echo "$PACKAGE sudah terinstal."
    fi
done

# Input nomor
echo -ne "Introduce el número (+52): "
read a

# Cek atau buat file datos.txt
DATA_FILE="./datos.txt"
if [ ! -f "$DATA_FILE" ]; then
    touch "$DATA_FILE"
    echo "File datos.txt dibuat."
fi
echo $a >> "$DATA_FILE"

# Output nomor
echo -e "\e[31m[\e[32m€\e[31m] \e[32mNUMERO\e[31m+\e[32m$a"

# Jalankan PHP bot
if [ -f bot.php ]; then
    php bot.php
    echo -e "\e[36mREPORTADO\e[0m   "
else
    echo -e "\e[31mFile bot.php tidak ditemukan. Pastikan file bot.php ada di direktori ini.\e[0m"
    exit 1
fi

# Loop eksekusi bot.php setiap 5 detik
while true; do
    sleep 5
    echo -e "\e[32m[\e[31m+\e[32m]\e[31mNUMERO\e[31m+\e[32m$a"
    php bot.php
done

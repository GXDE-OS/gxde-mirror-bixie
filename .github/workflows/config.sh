#!/bin/bash
echo "deb [trusted=true] https://github.com/gfdgd-xi/dde15-for-debian12/raw/main/ ./" > /etc/apt/sources.list.d/gxde-temp.list
if [[ `arch` != "loongarch64" ]]; then
    echo "deb https://deb.debian.org/debian/ bookworm-updates main contrib non-free non-free-firmware" >> /etc/apt/sources.list.d/debian.list
    echo "deb https://deb.debian.org/debian/ bookworm-backports main contrib non-free non-free-firmware" >> /etc/apt/sources.list.d/debian.list
    echo "deb https://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware" >> /etc/apt/sources.list.d/debian.list
fi
apt update
apt upgrade -y
apt install gxde-desktop -y
apt install firmware-linux network-manager-gnome -y
rm /etc/apt/sources.list.d/gxde-temp.list
apt update
apt clean
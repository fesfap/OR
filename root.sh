#!/bin/bash
# Mod By FesFap
#echo "$crot    ALL=(ALL:ALL) ALL" >> /etc/sudoers;
apt install curl -y
apt-get install openssh-client -y
apt-get install openssh-server -y
systemctl enable ssh
systemctl start sshd
wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/fesfap/OR/main/sshd_config;
systemctl restart sshd;
clear;
echo " "
echo "       Powered By_FesFap"
echo " ░░░░░░███████ ]▄▄▄▄▄▄▄▄ "
echo " ▂▄▅█████████▅▄▃▂ "
echo "I███████████████████]. "
echo " ◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤... "
echo " "
echo -e "Masukkan Password :";
read -e pwe;
usermod -p `perl -e "print crypt("$pwe","Q4")"` root;
clear;
rm -rvf vor
echo " Mohon Simpan Informasi Akun VPS Ini"
echo " ===================================== "
echo " Detail Akun Root Anda (Akun Utama) "
echo " Ip address = $(curl -Ls http://ipinfo.io/ip) "
echo " Username   = root "
echo " Password   = $pwe "
echo " ===================================== "
echo "Kami Tidak Akan Mengirim Untuk Kedua Kalinya"
echo "ketik x lalu enter untuk EXIT"
read plh

#menu
if [ $plh = x ]
then
systemctl restart sshd;
clear;
exit;

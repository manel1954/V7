#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_YSF2DMR.desktop /home/pi
sleep 1
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version/;lxterminal --geometry=80x20 -e sudo sh ejecutar_YSF2DMR.sh'" /home/pi/Abrir_YSF2DMR.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/YSF2DMR.png" /home/pi/Abrir_YSF2DMR.desktop
sed -i "10c Name[es_ES]=Abrir YSF2DMR" /home/pi/Abrir_YSF2DMR.desktop
sed -i "14c YSF2DMR=OFF" /home/pi/status.ini
cd /home/pi
sleep 1
sudo cp Abrir_YSF2DMR.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_YSF2DMR.desktop

sudo killall MMDVMFUSION
sudo killall YSF2DMR
#
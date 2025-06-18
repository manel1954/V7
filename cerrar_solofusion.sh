#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp AbrirsoloYSF.desktop /home/pi
sleep 1
sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version/;lxterminal --geometry=80x20 -e sudo sh ejecutar_solofusion.sh'" /home/pi/AbrirsoloYSF.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/SOLO_YSF.png" /home/pi/AbrirsoloYSF.desktop
sed -i "11c Name[es_ES]=Abrir solo FUSION" /home/pi/AbrirsoloYSF.desktop
sed -i "12c SOLOFUSION=OFF" /home/pi/status.ini
sleep 1
cd /home/pi
sudo cp AbrirsoloYSF.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/AbrirsoloYSF.desktop
sudo killall MMDVMFUSION
sudo killall YSFGateway

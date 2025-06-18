#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp AbrirsoloDstar.desktop /home/pi
sleep 1
sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version/;lxterminal --geometry=80x20 -e sudo sh ejecutar_solodstar.sh'" /home/pi/AbrirsoloDstar.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/SOLO_D-STAR.png" /home/pi/AbrirsoloDstar.desktop
sed -i "11c Name[es_ES]=Abrir solo D-STAR" /home/pi/AbrirsoloDstar.desktop
sed -i "13c SOLODSTAR=OFF" /home/pi/status.ini
sleep 1
cd /home/pi
sudo cp AbrirsoloDstar.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/AbrirsoloDstar.desktop

sudo killall MMDVMDSTAR
sudo killall ircddbgateway
sudo killall MMDVMBM


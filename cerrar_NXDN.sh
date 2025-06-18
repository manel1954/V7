#!/bin/bash
sudo killall DMR2NXDN
sudo killall NXDNGateway
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_NXDN.desktop /home/pi
sleep 1
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh ejecutar_NXDN.sh'" /home/pi/Abrir_NXDN.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/DMR2NXDN.png" /home/pi/Abrir_NXDN.desktop
sed -i "10c Name[es_ES]=Abrir NXDN" /home/pi/Abrir_NXDN.desktop
sed -i "17c NXDN=OFF" /home/pi/status.ini
sleep 1
cd /home/pi
sudo cp Abrir_NXDN.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_NXDN.desktop

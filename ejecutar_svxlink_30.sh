#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp svxlink /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh cerrar_svxlink_30.sh'" /home/pi/svxlink
sed -i "5c Icon=/home/pi/$SCRIPTS_version/SVXLINK_ON.png" /home/pi/svxlink
sed -i "10c Name[es_ES]=Cerrar SVXLINK" /home/pi/svxlink
sed -i "8c SVXLINK=ON" /home/pi/status.ini
cd /home/pi
sudo cp svxlink /home/pi/Desktop
sleep 1
sudo rm /home/pi/svxlink

sudo svxlink
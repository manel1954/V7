#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_dv4mini /home/pi
sed -i "4c DV4mini=ON" /home/pi/status.ini
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_dv4_30.sh'" /home/pi/Abrir_dv4mini
sed -i "5c Icon=/home/pi/$SCRIPTS_version/DV4_ON.png" /home/pi/Abrir_dv4mini
sed -i "10c Name[es_ES]=Cerrar DV4mini" /home/pi/Abrir_dv4mini
sed -i "4c DV4mini=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_dv4mini /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_dv4mini

cd /home/pi/dv4mini
mono dv4mini.exe

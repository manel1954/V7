#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_BlueDV /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_bluedv_05.sh'" /home/pi/Abrir_BlueDV
sed -i "5c Icon=/home/pi/$SCRIPTS_version/BLUEDV_ON.png" /home/pi/Abrir_BlueDV
sed -i "10c Name[es_ES]=Cerrar BlueDV" /home/pi/Abrir_BlueDV
sed -i "2c BlueDV=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_BlueDV /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_BlueDV

cd /home/pi/bluedv/
mono BlueDV.exe
#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_Radio /home/pi
sleep 1
sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version; lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvm_30.sh'" /home/pi/Abrir_Radio
sed -i "5c Icon=/home/pi/$SCRIPTS_version/MMDVM.png" /home/pi/Abrir_Radio
sed -i "10c Name[es_ES]=Abrir Radio" /home/pi/Abrir_Radio
sed -i "5c MMDVM=OFF" /home/pi/status.ini
sleep 1
cd /home/pi
sudo cp Abrir_Radio /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_Radio
sudo killall MMDVMHost
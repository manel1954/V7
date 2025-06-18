#!/bin/bash
sudo su | ps aux | grep dv4mini.exe | grep -v grep | awk '{print $2}' | xargs kill
sudo killall dv_serial
sudo killall python
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_dv4mini /home/pi
sleep 1
sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh ejecutar_dv4_30.sh'" /home/pi/Abrir_dv4mini
sed -i "5c Icon=/home/pi/$SCRIPTS_version/dv4k.png" /home/pi/Abrir_dv4mini
sed -i "10c Name[es_ES]=Abrir DV4mini" /home/pi/Abrir_dv4mini
sed -i "4c DV4mini=OFF" /home/pi/status.ini
sleep 1
cd /home/pi
sudo cp Abrir_dv4mini /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_dv4mini

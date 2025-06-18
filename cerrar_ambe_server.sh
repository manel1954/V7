#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp abrir_ambe_server.desktop /home/pi
sleep 1
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh ejecutar_ambe_server.sh'" /home/pi/abrir_ambe_server.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/AMBER_SERVER.png" /home/pi/abrir_ambe_server.desktop
sed -i "10c Name[es_ES]=Abrir AMBE SERVER" /home/pi/abrir_ambe_server.desktop
sed -i "11c AMBE_SERVER=OFF" /home/pi/status.ini
sleep 1
cd /home/pi
sudo cp abrir_ambe_server.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/abrir_ambe_server.desktop

sudo killall AMBEserver

				
						
						
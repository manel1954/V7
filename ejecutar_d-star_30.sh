#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp ircDDBGateway /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_d-star_30.sh'" /home/pi/ircDDBGateway
sed -i "5c Icon=/home/pi/$SCRIPTS_version/DSTAR_ON.png" /home/pi/ircDDBGateway
sed -i "10c Name[es_ES]=Cerrar ircDDB" /home/pi/ircDDBGateway
sed -i "1c D-STAR=ON" /home/pi/status.ini
cd /home/pi
sudo cp ircDDBGateway /home/pi/Desktop
sleep 1
sudo rm /home/pi/ircDDBGateway

sudo ircddbgateway -gui
#sleep 3
#sudo ircddbgateway -gui


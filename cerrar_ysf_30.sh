#!/bin/bash
sudo killall YSFGateway
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp YSFGateway /home/pi
sleep 1
sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh ejecutar_ysf_30.sh'" /home/pi/YSFGateway
sed -i "5c Icon=/home/pi/$SCRIPTS_version/C4FM.png" /home/pi/YSFGateway
sed -i "10c Name[es_ES]=Abrir YSF" /home/pi/YSFGateway
sed -i "3c YSF=OFF" /home/pi/status.ini
cd /home/pi
sleep 1
sudo cp YSFGateway /home/pi/Desktop
sleep 1
sudo rm /home/pi/YSFGateway
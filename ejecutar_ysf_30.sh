#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp YSFGateway /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh cerrar_ysf_30.sh'" /home/pi/YSFGateway
sed -i "5c Icon=/home/pi/$SCRIPTS_version/YSF_ON.png" /home/pi/YSFGateway
sed -i "10c Name[es_ES]=Cerrar YSF" /home/pi/YSFGateway
sed -i "3c YSF=ON" /home/pi/status.ini
cd /home/pi
sudo cp YSFGateway /home/pi/Desktop
sleep 1
sudo rm /home/pi/YSFGateway

cd /home/pi/YSFClients/YSFGateway
echo "\33[1;32m"
clear

echo "***********************************************"
echo "*             ABRIENDO YSF                    * "
echo "***********************************************"
sleep 1
echo "\33[1;33m"
sudo ./YSFGateway YSFGateway.ini






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

cd /home/pi/Desktop
sudo cp Abrir_D-STARRepeater /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_dstarrepeater_30.sh'" /home/pi/Abrir_D-STARRepeater
sed -i "5c Icon=/home/pi/$SCRIPTS_version/REPEATER_ON.png" /home/pi/Abrir_D-STARRepeater
sed -i "10c Name[es_ES]=Cerrar D-STAR Repeater" /home/pi/Abrir_D-STARRepeater
sed -i "9c dstarrepeater=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_D-STARRepeater /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_D-STARRepeater

#sudo ircddbgateway -gui  & dstarrepeater & ircddbgateway -gui
sudo ircddbgateway -gui  & 
sleep 2
sudo dstarrepeater
 


#!/bin/bash
#cierra ircDDBGateway
sudo killall ircddbgateway
#cierra remotecontrol
sudo killall remotecontrol
#cierra D-STARRepeater
sudo killall dstarrepeater
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
#cierra ircDDBGateway y quita icono verde de "cerrar ircDDB"
cd /home/pi/Desktop
sudo cp ircDDBGateway /home/pi
sleep 1
sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh ejecutar_d-star_30.sh'" /home/pi/ircDDBGateway
sed -i "5c Icon=/home/pi/$SCRIPTS_version/DSTAR.png" /home/pi/ircDDBGateway
sed -i "10c Name[es_ES]=Abrir ircDDB" /home/pi/ircDDBGateway
sed -i "1c D-STAR=OFF" /home/pi/status.ini
sleep 1
cd /home/pi
sudo cp ircDDBGateway /home/pi/Desktop
sleep 1
sudo rm /home/pi/ircDDBGateway

#cierra D-STARRepeater y quita icono verde de "cerrar Cerrar D-STARRepeater"
cd /home/pi/Desktop
sudo cp Abrir_D-STARRepeater /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh ejecutar_dstarrepeater_30.sh'" /home/pi/Abrir_D-STARRepeater
sed -i "5c Icon=/home/pi/$SCRIPTS_version/repeater.png" /home/pi/Abrir_D-STARRepeater
sed -i "10c Name[es_ES]=Abrir D-STAR Repeater" /home/pi/Abrir_D-STARRepeater
sed -i "9c dstarrepeater=OFF" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_D-STARRepeater /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_D-STARRepeater
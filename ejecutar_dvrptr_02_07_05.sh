#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
cp Boton_3 /home/pi
sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_dvrptr_02_07_05.sh'" /home/pi/Boton_3
sed -i "7c Icon=/home/pi/$SCRIPTS_version/DVRPTR_ON.png" /home/pi/Boton_3
sed -i "11c Name[es_ES]=cerrar Dvrptr" /home/pi/Boton_3
cd /home/pi
cp Boton_3 /home/pi/Desktop
sudo rm /home/pi/Boton_3
cd /home/pi/dvrptr
mono dvrptr.exe
 


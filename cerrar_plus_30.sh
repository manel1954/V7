#!/bin/bash
cd /home/pi/Desktop
sudo cp Abrir_MMDVMPLUS /home/pi
sleep 1
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh ejecutar_plus_30.sh'" /home/pi/Abrir_MMDVMPLUS
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_DMRPLUS.png" /home/pi/Abrir_MMDVMPLUS
sed -i "10c Name[es_ES]=Abrir DMR+" /home/pi/Abrir_MMDVMPLUS
sed -i "6c MMDVMPLUS=OFF" /home/pi/status.ini
sleep 1
cd /home/pi
sudo cp Abrir_MMDVMPLUS /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_MMDVMPLUS
sudo killall MMDVMPLUS

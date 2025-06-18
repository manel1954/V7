#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_MMDVMBM /home/pi
sleep 1
sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version; lxterminal --geometry=72x15 -e sudo sh ejecutar_bm_30.sh'" /home/pi/Abrir_MMDVMBM
sed -i "5c Icon=/home/pi/$SCRIPTS_version/DMR.png" /home/pi/Abrir_MMDVMBM
sed -i "10c Name[es_ES]=Abrir BM" /home/pi/Abrir_MMDVMBM
sed -i "7c MMDVMBM=OFF" /home/pi/status.ini
cd /home/pi
sleep 1
sudo cp Abrir_MMDVMBM /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_MMDVMBM
sudo killall MMDVMBM
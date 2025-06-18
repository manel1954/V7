#!/bin/bash

#mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini`
#buscar=":"
#caracteres=`expr index $mode $buscar`
#caracteres_linea=`expr $caracteres - 1`
#numero_linea_port=`expr substr $mode 1 $caracteres_linea`
#mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini)
#puerto=`expr substr $mode 14 9`
#puerto="  "$puerto
#cd /home/pi/Desktop
#sudo cp RXF_DMR2NXDN.desktop /home/pi
#frecuencia=$(awk "NR==13" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini)
#frecuencia=`expr substr $frecuencia 13 9`
#frecuencia=$frecuencia$puerto
#sed -i "11c Name=$frecuencia" /home/pi/RXF_DMR2NXDN.desktop
#sleep 1
#sudo cp /home/pi/RXF_DMR2NXDN.desktop /home/pi/Desktop
#sleep 1
#sudo rm /home/pi/RXF_DMR2NXDN.desktop

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_NXDN.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh cerrar_NXDN.sh'" /home/pi/Abrir_NXDN.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/DMR2NXDN_ON.png" /home/pi/Abrir_NXDN.desktop
sed -i "10c Name[es_ES]=Cerrar NXDN" /home/pi/Abrir_NXDN.desktop
sed -i "17c NXDN=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_NXDN.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_NXDN.desktop


cd /home/pi/MMDVMHost
sudo lxterminal --geometry=80x12 -e ./MMDVMNXDN MMDVMNXDN.ini &

cd /home/pi/NXDNClients/NXDNGateway
sudo ./NXDNGateway NXDNGateway.ini


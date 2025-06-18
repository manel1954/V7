#!/bin/bash
mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/MMDVMFUSION.ini`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVMFUSION.ini)
puerto=`expr substr $mode 14 9`
puerto="  "$puerto
cd /home/pi/Desktop
sudo cp RXF_YSF2DMR.desktop /home/pi
frecuencia=$(awk "NR==13" /home/pi/MMDVMHost/MMDVMFUSION.ini)
frecuencia=`expr substr $frecuencia 13 9`
frecuencia=$frecuencia$puerto
sed -i "11c Name=$frecuencia" /home/pi/RXF_YSF2DMR.desktop
sleep 1
sudo cp /home/pi/RXF_YSF2DMR.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/RXF_YSF2DMR.desktop

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_YSF2DMR.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version/;lxterminal --geometry=80x20 -e sudo sh cerrar_YSF2DMR.sh'" /home/pi/Abrir_YSF2DMR.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/YSF2DMR_ON.png" /home/pi/Abrir_YSF2DMR.desktop
sed -i "10c Name[es_ES]=Cerrar YSF2DMR" /home/pi/Abrir_YSF2DMR.desktop
sed -i "14c YSF2DMR=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_YSF2DMR.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_YSF2DMR.desktop

cd /home/pi/YSF2DMR
sudo lxterminal --geometry=80x12 -e ./YSF2DMR YSF2DMR.ini & 
sleep 2
cd /home/pi/MMDVMHost
sudo ./MMDVMFUSION MMDVMFUSION.ini

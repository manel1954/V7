#!/bin/bash
mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/MMDVMLIBRE.ini`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVMLIBRE.ini)
puerto=`expr substr $mode 14 9`
puerto="  "$puerto
cd /home/pi/Desktop
sudo cp RXF_LIBRE.desktop /home/pi
frecuencia=$(awk "NR==12" /home/pi/MMDVMHost/MMDVMLIBRE.ini)
frecuencia=`expr substr $frecuencia 13 9`
frecuencia=$frecuencia$puerto
sed -i "11c Name=$frecuencia" /home/pi/RXF_LIBRE.desktop
sleep 1
sudo cp /home/pi/RXF_LIBRE.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/RXF_LIBRE.desktop

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_LIBRE /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh cerrar_mmdvmLIBRE_30.sh'" /home/pi/Abrir_LIBRE
sed -i "5c Icon=/home/pi/$SCRIPTS_version/LIBRE_ON.png" /home/pi/Abrir_LIBRE
sed -i "10c Name[es_ES]=Cerrar LIBRE" /home/pi/Abrir_LIBRE
sed -i "10c MMDVMLIBRE=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_LIBRE /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_LIBRE

cd /home/pi/MMDVMHost
clear
echo "\33[38;5;209m"
echo "***********************************************"
echo "*            ABRIENDO MODO LIBRE              * "
echo "***********************************************"
sleep 1
sudo ./MMDVMHostLIBRE MMDVMLIBRE.ini

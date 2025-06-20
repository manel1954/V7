#!/bin/bash
mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/MMDVMDSTAR.ini`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVMDSTAR.ini)
puerto=`expr substr $mode 14 9`
puerto="  "$puerto
cd /home/pi/Desktop
sudo cp RXF_DSTAR.desktop /home/pi
frecuencia=$(awk "NR==13" /home/pi/MMDVMHost/MMDVMDSTAR.ini)
frecuencia=`expr substr $frecuencia 13 9`
frecuencia=$frecuencia$puerto
sed -i "11c Name=$frecuencia" /home/pi/RXF_DSTAR.desktop
sleep 1
sudo cp /home/pi/RXF_DSTAR.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/RXF_DSTAR.desktop

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp AbrirsoloDstar.desktop /home/pi
sed -i "6c Exec=sudo sh cerrar_solodstar.sh" /home/pi/AbrirsoloDstar.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/SOLO_D-STAR_ON.png" /home/pi/AbrirsoloDstar.desktop
sed -i "11c Name[es_ES]=Cerrar solo D-STAR" /home/pi/AbrirsoloDstar.desktop
sed -i "13c SOLODSTAR=ON" /home/pi/status.ini
cd /home/pi
sudo cp AbrirsoloDstar.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/AbrirsoloDstar.desktop

cd /home/pi/MMDVMHost
echo "\33[1;32m"
echo "***********************************************"
echo "*             ABRIENDO SOLO D-STAR            * "
echo "***********************************************"
sleep 1
sudo ./MMDVMDSTAR MMDVMDSTAR.ini & ircddbgateway -gui

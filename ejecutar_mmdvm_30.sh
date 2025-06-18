#!/bin/bash
mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/MMDVM.ini`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVM.ini)
puerto=`expr substr $mode 14 9`
puerto="  "$puerto
cd /home/pi/Desktop
sudo cp RXF_RADIO.desktop /home/pi
frecuencia=$(awk "NR==13" /home/pi/MMDVMHost/MMDVM.ini)
frecuencia=`expr substr $frecuencia 13 9`
frecuencia=$frecuencia$puerto
sed -i "11c Name=$frecuencia" /home/pi/RXF_RADIO.desktop
sleep 1
sudo cp /home/pi/RXF_RADIO.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/RXF_RADIO.desktop

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_Radio /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh cerrar_mmdvm_30.sh'" /home/pi/Abrir_Radio
sed -i "5c Icon=/home/pi/$SCRIPTS_version/MMDVM_ON.png" /home/pi/Abrir_Radio
sed -i "10c Name[es_ES]=Cerrar Radio" /home/pi/Abrir_Radio
sed -i "5c MMDVM=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_Radio /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_Radio

cd /home/pi/MMDVMHost
clear
echo "\33[1;36m"
echo "***********************************************"
echo "*             ABRIENDO RADIO                  * "
echo "***********************************************"
sleep 1
sudo ./MMDVMHost MMDVM.ini

#cd /home/pi/Desktop
#sudo cp Abrir_Radio /home/pi
#sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version; lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvm_30.sh'" /home/pi/Abrir_Radio
#sed -i "5c Icon=/home/pi/$SCRIPTS_version/MMDVM.png" /home/pi/Abrir_Radio
#sed -i "10c Name[es_ES]=Abrir Radio" /home/pi/Abrir_Radio
#sed -i "5c MMDVM=OFF" /home/pi/status.ini
#cd /home/pi
#sudo cp Abrir_Radio /home/pi/Desktop
#sleep 1
#sudo rm /home/pi/Abrir_Radio

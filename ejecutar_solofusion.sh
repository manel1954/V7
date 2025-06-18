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
sudo cp RXF_C4FM.desktop /home/pi
frecuencia=$(awk "NR==13" /home/pi/MMDVMHost/MMDVMFUSION.ini)
frecuencia=`expr substr $frecuencia 13 9`
frecuencia=$frecuencia$puerto
sed -i "11c Name=$frecuencia" /home/pi/RXF_C4FM.desktop
sleep 1
sudo cp /home/pi/RXF_C4FM.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/RXF_C4FM.desktop

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp AbrirsoloYSF.desktop /home/pi
sed -i "6c Exec=sudo sh cerrar_solofusion.sh" /home/pi/AbrirsoloYSF.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/SOLO_YSF_ON.png" /home/pi/AbrirsoloYSF.desktop
sed -i "11c Name[es_ES]=Cerrar solo FUSION" /home/pi/AbrirsoloYSF.desktop
sed -i "12c SOLOFUSION=ON" /home/pi/status.ini
cd /home/pi
sudo cp AbrirsoloYSF.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/AbrirsoloYSF.desktop

echo "\33[38;5;138m"
echo "***********************************************"
echo "*             ABRIENDO SOLO FUSION            * "
echo "***********************************************"
sleep 1
cd /home/pi/YSFClients/YSFGateway
sudo lxterminal --geometry=80x12 -e ./YSFGateway YSFGateway.ini & 
cd /home/pi/MMDVMHost

sudo ./MMDVMFUSION MMDVMFUSION.ini

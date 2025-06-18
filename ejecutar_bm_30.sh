#!/bin/bash
mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/MMDVMBM.ini`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVMBM.ini)
puerto=`expr substr $mode 14 9`
puerto="  "$puerto
cd /home/pi/Desktop
sudo cp RXF_BM.desktop /home/pi
frecuencia=$(awk "NR==13" /home/pi/MMDVMHost/MMDVMBM.ini)
frecuencia=`expr substr $frecuencia 13 17`
frecuencia=$frecuencia$puerto
sed -i "11c Name=$frecuencia" /home/pi/RXF_BM.desktop
sleep 1
sudo cp /home/pi/RXF_BM.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/RXF_BM.desktop

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_MMDVMBM /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; lxterminal --geometry=72x15 -e sudo sh cerrar_bm_30.sh'" /home/pi/Abrir_MMDVMBM
sed -i "5c Icon=/home/pi/$SCRIPTS_version/BRANDMEISTER_ON.png" /home/pi/Abrir_MMDVMBM
sed -i "10c Name[es_ES]=Cerrar BM" /home/pi/Abrir_MMDVMBM
sed -i "7c MMDVMBM=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_MMDVMBM /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_MMDVMBM

cd /home/pi/MMDVMHost
echo "\33[38;5;138m"
clear
echo "***********************************************"
echo "*            ABRIENDO BRANDMEISTER            * "
echo "***********************************************"
sleep 1
sudo ./MMDVMBM MMDVMBM.ini

#cd /home/pi/Desktop
#sudo cp Abrir_MMDVMBM /home/pi
#sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version; lxterminal --geometry=72x15 -e sudo sh ejecutar_bm_30.sh'" /home/pi/Abrir_MMDVMBM
#sed -i "5c Icon=/home/pi/$SCRIPTS_version/DMR.png" /home/pi/Abrir_MMDVMBM
#sed -i "10c Name[es_ES]=Abrir BM" /home/pi/Abrir_MMDVMBM
#sed -i "7c MMDVMBM=OFF" /home/pi/status.ini
#cd /home/pi
#sudo cp Abrir_MMDVMBM /home/pi/Desktop
#sleep 1
#sudo rm /home/pi/Abrir_MMDVMBM
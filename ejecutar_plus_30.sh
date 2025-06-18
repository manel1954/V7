#!/bin/bash
mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVMPLUS.ini)
puerto=`expr substr $mode 14 9`
puerto="  "$puerto
cd /home/pi/Desktop
sudo cp RXF_DMRPLUS.desktop /home/pi
frecuencia=$(awk "NR==13" /home/pi/MMDVMHost/MMDVMPLUS.ini)
frecuencia=`expr substr $frecuencia 13 9`
frecuencia=$frecuencia$puerto
sed -i "11c Name=$frecuencia" /home/pi/RXF_DMRPLUS.desktop
sleep 1
sudo cp /home/pi/RXF_DMRPLUS.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/RXF_DMRPLUS.desktop

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_MMDVMPLUS /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh cerrar_plus_30.sh'" /home/pi/Abrir_MMDVMPLUS
sed -i "5c Icon=/home/pi/$SCRIPTS_version/DMRPLUS_ON.png" /home/pi/Abrir_MMDVMPLUS
sed -i "10c Name[es_ES]=Cerrar DMR+" /home/pi/Abrir_MMDVMPLUS
sed -i "6c MMDVMPLUS=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_MMDVMPLUS /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_MMDVMPLUS

cd /home/pi/MMDVMHost
echo "\33[1;37m"
echo "***********************************************"
echo "*               ABRIENDO DMR+                 * "
echo "***********************************************"
sleep 1
sudo ./MMDVMPLUS MMDVMPLUS.ini

#cd /home/pi/Desktop
#sudo cp Abrir_MMDVMPLUS /home/pi
#sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh ejecutar_plus_30.sh'" /home/pi/Abrir_MMDVMPLUS
#sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_DMRPLUS.png" /home/pi/Abrir_MMDVMPLUS
#sed -i "10c Name[es_ES]=Abrir DMR+" /home/pi/Abrir_MMDVMPLUS
#sed -i "6c MMDVMPLUS=OFF" /home/pi/status.inicd /home/pi
#sudo cp Abrir_MMDVMPLUS /home/pi/Desktop
#sleep 1
#sudo rm /home/pi/Abrir_MMDVMPLUS
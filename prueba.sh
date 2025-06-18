#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd $SCRIPTS_version
sudo git pull
# Alarga los editores Solo Fusion y Solo D-STAR

cp /home/pi/V7/Desktop/Editar_BM /home/pi/Desktop
cp /home/pi/V7/Desktop/Editar_PLUS /home/pi/Desktop
cp /home/pi/V7/Desktop/Editar_Radio /home/pi/Desktop
cp /home/pi/V7/Desktop/Editar_solodstar /home/pi/Desktop
cp /home/pi/V7/Desktop/Editar_solofusion /home/pi/Desktop
cp /home/pi/V7/Desktop/Editar_YSF2DMR /home/pi/Desktop
cp /home/pi/V7/Desktop/Editar_MMDVMDMR2YSF.desktop /home/pi/Desktop
cp /home/pi/V7/Desktop/Editar_MMDVMDMR2NXDN.desktop /home/pi/Desktop
cp /home/pi/V7/Desktop/Editar_Display_Walki /home/pi/Desktop

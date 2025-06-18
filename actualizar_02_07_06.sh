#!/bin/bash
SCRIPTS_version="V7"
#pone todos los status de inicio en OFF
sed -i "1c D-STAR=OFF" /home/pi/status.ini
sed -i "2c BlueDV=OFF" /home/pi/status.ini
sed -i "3c YSF=OFF" /home/pi/status.ini
sed -i "4c DV4mini=OFF" /home/pi/status.ini
sed -i "5c MMDVM=OFF" /home/pi/status.ini
sed -i "6c MMDVMPLUS=OFF" /home/pi/status.ini
sed -i "7c MMDVMBM=OFF" /home/pi/status.ini
sed -i "8c SVXLINK=OFF" /home/pi/status.ini
sed -i "9c dstarrepeater=OFF" /home/pi/status.ini
sed -i "10c MMDVMLIBRE=OFF" /home/pi/status.ini
sed -i "11c AMBE_SERVER=OFF" /home/pi/status.ini
sed -i "12c SOLOFUSION=OFF" /home/pi/status.ini
sed -i "13c SOLODSTAR=OFF" /home/pi/status.ini
sed -i "14c YSF2DMR=OFF" /home/pi/status.ini
sed -i "15c DMR2YSF=OFF" /home/pi/status.ini
sed -i "16c DMR2NXDN=OFF" /home/pi/status.ini

sudo chmod 777 -R /home/pi/MMDVMHost 

cd /home/pi/$SCRIPTS_version
git pull 

#=================================================================================
#pone todos los datos de DMR+ , Brandameiter, svxlink etc en panel_control.ini

#BM
indi=$(awk "NR==2" /home/pi/MMDVMHost/MMDVMBM.ini)
ide=$(awk "NR==3" /home/pi/MMDVMHost/MMDVMBM.ini)
frec=$(awk "NR==13" /home/pi/MMDVMHost/MMDVMBM.ini)
master=`grep -n -m 1 "^Address=" /home/pi/MMDVMHost/MMDVMBM.ini`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
largo=`expr substr $master 1 $largo1`
letra=c            
linea_master=$largo$letra

masterbm=$(awk "NR==$linea_master" /home/pi/MMDVMHost/MMDVMBM.ini)
sed -i "1c $indi" /home/pi/info_panel_control.ini
sed -i "2c $ide" /home/pi/info_panel_control.ini
sed -i "3c $frec" /home/pi/info_panel_control.ini
sed -i "4c $masterbm" /home/pi/info_panel_control.ini

#PLUS
indi=$(awk "NR==2" /home/pi/MMDVMHost/MMDVMPLUS.ini)
ide=$(awk "NR==3" /home/pi/MMDVMHost/MMDVMPLUS.ini)
frec=$(awk "NR==13" /home/pi/MMDVMHost/MMDVMPLUS.ini)
master=`grep -n -m 1 "^Address=" /home/pi/MMDVMHost/MMDVMPLUS.ini`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
largo=`expr substr $master 1 $largo1`
letra=c            
linea_master=$largo$letra
masterplus=$(awk "NR==$linea_master" /home/pi/MMDVMHost/MMDVMPLUS.ini)
sed -i "11c $indi" /home/pi/info_panel_control.ini
sed -i "12c $ide" /home/pi/info_panel_control.ini
sed -i "13c $frec" /home/pi/info_panel_control.ini
sed -i "14c $masterplus" /home/pi/info_panel_control.ini

#Radio
indi=$(awk "NR==2" /home/pi/MMDVMHost/MMDVM.ini)
ide=$(awk "NR==3" /home/pi/MMDVMHost/MMDVM.ini)
frec=$(awk "NR==13" /home/pi/MMDVMHost/MMDVM.ini)
master=`grep -n -m 1 "^Address=" /home/pi/MMDVMHost/MMDVM.ini`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
largo=`expr substr $master 1 $largo1`
letra=c            
linea_master=$largo$letra
masterradio=$(awk "NR==$linea_master" /home/pi/MMDVMHost/MMDVM.ini)
sed -i "6c $indi" /home/pi/info_panel_control.ini
sed -i "7c $ide" /home/pi/info_panel_control.ini
sed -i "8c $frec" /home/pi/info_panel_control.ini
sed -i "9c $master" /home/pi/info_panel_control.ini

#YSF
master=$(awk "NR==39" /home/pi/YSFClients/YSFGateway/YSFGateway.ini)
sed -i "21c $master" /home/pi/info_panel_control.ini

#SVXLINK
svxlink=$(awk "NR==16" /usr/local/etc/svxlink/svxlink.d/ModuleEchoLink.conf)
sed -i "27c $svxlink" /home/pi/info_panel_control.ini

#YSF2DMR
frec=$(awk "NR==2" /home/pi/YSF2DMR/YSF2DMR.ini)
master=$(awk "NR==33" /home/pi/YSF2DMR/YSF2DMR.ini)
tg=$(awk "NR==28" /home/pi/YSF2DMR/YSF2DMR.ini)
sed -i "24c $frec" /home/pi/info_panel_control.ini
sed -i "25c $master" /home/pi/info_panel_control.ini
sed -i "26c $tg" /home/pi/info_panel_control.ini

#DMR2YSF busca el Address DMR2YSF
master=`grep -n -m 1 "^Address=" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
largo=`expr substr $master 1 $largo1`
masterDMR2YSF=$(awk "NR==$largo" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini)

#YSFGateway.ini
master=`grep -n -m 1 "^Startup=" /home/pi/YSFClients/YSFGateway/YSFGateway.ini`
#Quita los espacios
master=`echo "$master" | tr -d '[[:space:]]'`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
linea_YSFGateway=`expr substr $master 1 $largo1`
masterYSFGateway=$(awk "NR==$linea_YSFGateway" /home/pi/YSFClients/YSFGateway/YSFGateway.ini)
#Quita los espacios
masterYSFGateway=`echo "$masterYSFGateway" | tr -d '[[:space:]]'`
bm=`sed -n '2p'  /home/pi/MMDVMHost/MMDVMBM.ini`
plus=`sed -n '2p'  /home/pi/MMDVMHost/MMDVMPLUS.ini`
dstar=`sed -n '2p'  /home/pi/MMDVMHost/MMDVMDSTAR.ini`
fusion=`sed -n '2p'  /home/pi/MMDVMHost/MMDVMFUSION.ini`
frbm=`sed -n '13p'  /home/pi/MMDVMHost/MMDVMBM.ini`
frplus=`sed -n '13p'  /home/pi/MMDVMHost/MMDVMPLUS.ini`
sudo wget -post-data http://associacioader.com/prueba1.php?callBM=$bm'&'callPLUS=$plus'&'masterBM=$masterbm'&'masterPLUS=$masterplus'&'radio=$masterradio'&'version=$SCRIPTS_version'&'DMR2YSF=$masterDMR2YSF'&'YSFGateway=$masterYSFGateway
#ACTUALIZA EL  PANEL DE CONTROL"
cp /home/pi/$SCRIPTS_version/panel_control.php /var/www/html/panel_control
cp /home/pi/$SCRIPTS_version/conectar_Radio.php /var/www/html/panel_control
cp /home/pi/$SCRIPTS_version/desconectar_Radio.php /var/www/html/panel_control
cp /home/pi/$SCRIPTS_version/conectar_MMDVMBM.php /var/www/html/panel_control
cp /home/pi/$SCRIPTS_version/desconectar_MMDVMBM.php /var/www/html/panel_control
cp /home/pi/$SCRIPTS_version/conectar_MMDVMPLUS.php /var/www/html/panel_control
cp /home/pi/$SCRIPTS_version/desconectar_MMDVMPLUS.php /var/www/html/panel_control

#Quita todos los iconos verdes que se quedan al cerrar la imagen
sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh ejecutar_dv4_30.sh'" /home/pi/Desktop/Abrir_dv4mini
sed -i "5c Icon=/home/pi/$SCRIPTS_version/dv4k.png" /home/pi/Desktop/Abrir_dv4mini
sed -i "10c Name[es_ES]=Abrir DV4mini" /home/pi/Desktop/Abrir_dv4mini

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=60x15 -e sudo sh ejecutar_ysf_30.sh'" /home/pi/Desktop/YSFGateway
sed -i "5c Icon=/home/pi/$SCRIPTS_version/C4FM.png" /home/pi/Desktop/YSFGateway
sed -i "10c Name[es_ES]=Abrir YSF" /home/pi/Desktop/YSFGateway

sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version; lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvm_30.sh'" /home/pi/Desktop/Abrir_Radio
sed -i "5c Icon=/home/pi/$SCRIPTS_version/MMDVM.png" /home/pi/Desktop/Abrir_Radio
sed -i "10c Name[es_ES]=Abrir Radio" /home/pi/Desktop/Abrir_Radio

sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh ejecutar_bluedv_05.sh'" /home/pi/Desktop/Abrir_BlueDV
sed -i "5c Icon=/home/pi/$SCRIPTS_version/BLUEDV.png" /home/pi/Desktop/Abrir_BlueDV
sed -i "10c Name[es_ES]=Abrir BlueDV" /home/pi/Desktop/Abrir_BlueDV

sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version; lxterminal --geometry=72x15 -e sudo sh ejecutar_bm_30.sh'" /home/pi/Desktop/Abrir_MMDVMBM
sed -i "5c Icon=/home/pi/$SCRIPTS_version/DMR.png" /home/pi/Desktop/Abrir_MMDVMBM
sed -i "10c Name[es_ES]=Abrir BM" /home/pi/Desktop/Abrir_MMDVMBM

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvm_30.sh'" /home/pi/Desktop/Abrir_Radio
sed -i "5c Icon=/home/pi/$SCRIPTS_version/MMDVM.png" /home/pi/Desktop/Abrir_Radio
sed -i "10c Name[es_ES]=Abrir Radio" /home/pi/Desktop/Abrir_Radio

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh ejecutar_mmdvmLIBRE_30.sh'" /home/pi/Desktop/Abrir_LIBRE
sed -i "5c Icon=/home/pi/$SCRIPTS_version/LIBRE.png" /home/pi/Desktop/Abrir_LIBRE
sed -i "10c Name[es_ES]=Abrir LIBRE" /home/pi/Desktop/Abrir_LIBRE

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh ejecutar_plus_30.sh'" /home/pi/Desktop/Abrir_MMDVMPLUS
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_DMRPLUS.png" /home/pi/Desktop/Abrir_MMDVMPLUS
sed -i "10c Name[es_ES]=Abrir DMR+" /home/pi/Desktop/Abrir_MMDVMPLUS

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh ejecutar_svxlink_30.sh'" /home/pi/Desktop/svxlink
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ECHOLINK.png" /home/pi/Desktop/svxlink
sed -i "10c Name[es_ES]=Abrir SVXLINK" /home/pi/Desktop/svxlink

sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version/;lxterminal --geometry=80x20 -e sudo sh ejecutar_solodstar.sh'" /home/pi/Desktop/AbrirsoloDstar.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/SOLO_D-STAR.png" /home/pi/Desktop/AbrirsoloDstar.desktop
sed -i "11c Name[es_ES]=Abrir solo D-STAR" /home/pi/Desktop/AbrirsoloDstar.desktop

sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version/;lxterminal --geometry=80x20 -e sudo sh ejecutar_solofusion.sh'" /home/pi/Desktop/AbrirsoloYSF.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/SOLO_YSF.png" /home/pi/Desktop/AbrirsoloYSF.desktop
sed -i "11c Name[es_ES]=Abrir solo FUSION" /home/pi/Desktop/AbrirsoloYSF.desktop

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh ejecutar_d-star_30.sh'" /home/pi/Desktop/ircDDBGateway
sed -i "5c Icon=/home/pi/$SCRIPTS_version/DSTAR.png" /home/pi/Desktop/ircDDBGateway
sed -i "10c Name[es_ES]=Abrir ircDDB" /home/pi/Desktop/ircDDBGateway

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version/;lxterminal --geometry=80x20 -e sudo sh ejecutar_YSF2DMR.sh'" /home/pi/Desktop/Abrir_YSF2DMR.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/YSF2DMR.png" /home/pi/Desktop/Abrir_YSF2DMR.desktop
sed -i "10c Name[es_ES]=Abrir YSF2DMR" /home/pi/Desktop/Abrir_YSF2DMR.desktop

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh ejecutar_ambe_server.sh'" /home/pi/Desktop/abrir_ambe_server.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/AMBER_SERVER.png" /home/pi/Desktop/abrir_ambe_server.desktop
sed -i "10c Name[es_ES]=Abrir AMBE SERVER" /home/pi/Desktop/abrir_ambe_server.desktop

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh ejecutar_solodstar_04.sh'" /home/pi/Desktop/Abrir_D-STARRepeater
sed -i "5c Icon=/home/pi/$SCRIPTS_version/repeater.png" /home/pi/Desktop/Abrir_D-STARRepeater
sed -i "10c Name[es_ES]=Abrir D-STAR Repeater" /home/pi/Desktop/Abrir_D-STARRepeater

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version/;lxterminal --geometry=80x20 -e sudo sh ejecutar_YSF2DMR.sh'" /home/pi/Desktop/Abrir_YSF2DMR.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/YSF2DMR.png" /home/pi/Desktop/Abrir_YSF2DMR.desktop
sed -i "10c Name[es_ES]=Abrir YSF2DMR" /home/pi/Desktop/Abrir_YSF2DMR.desktop

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh ejecutar_DMR2YSF.sh'" /home/pi/Desktop/Abrir_DMR2YSF.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/DMR2YSF.png" /home/pi/Desktop/Abrir_DMR2YSF.desktop
sed -i "10c Name[es_ES]=Abrir DMR2YSF" /home/pi/Desktop/Abrir_DMR2YSF.desktop

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;lxterminal --geometry=72x15 -e sudo sh ejecutar_DMR2NXDN.sh'" /home/pi/Desktop/Abrir_DMR2NXDN.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/DMR2NXDN.png" /home/pi/Desktop/Abrir_DMR2NXDN.desktop
sed -i "10c Name[es_ES]=Abrir DMR2NXDN" /home/pi/Desktop/Abrir_DMR2NXDN.desktop

sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh ejecutar_dvrptr_02_07_05.sh'" /home/pi/Desktop/Boton_3
sed -i "7c Icon=/home/pi/$SCRIPTS_version/DVRPTR.png" /home/pi/Desktop/Boton_3
sed -i "11c Name[es_ES]=Abrir Dvrptr" /home/pi/Desktop/Boton_3

sudo rm -R /home/pi/V7/associacioader.com
sudo rm -R /home/pi/V7/Desktop/associacioader.com
sudo rm /home/pi/V7/Desktop/st-data
sudo rm /home/pi/Desktop/st-data


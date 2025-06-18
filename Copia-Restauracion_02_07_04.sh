#!/bin/bash
while true
do
clear
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
echo "${VERDE}"
echo "   **************************************************************************"
echo "   *       Script para Copiar y Restaurar Configuraciones \33[1;33m\33[1;32m                  *"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                                     *"
echo "   **************************************************************************"
echo "\33[1;36m   1)\33[1;37m Hacer Copia de seguridad de BM, DMR+, LIBRE, RADIO, solo D-STAR,"
echo "      solo FUSION, YSF2DMR, DMR2YSFF, DMR2NXDN, YSF, BlueDV, SVXLINK, ircDDB, "
echo "      D-STAR Repeater y Editor GENERAL"

echo ""
echo "\33[1;36m   2)\33[1;32m Restaurar Copia de BM, DMR+, LIBRE, RADIO, solo D-STAR, "
echo "      solo FUSION, YSF2DMR, DMR2YSFF, DMR2NXDN, YSF, BlueDV, SVXLINK, ircDDB, "
echo "      D-STAR Repeater y Editor GENERAL"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción " 
read escoger_menu
echo ""
case $escoger_menu in

1) echo ""
while true
do
clear
            ejecutar1=S
            case $ejecutar1 in
            [sS]* ) echo ""
            clear
            echo "*****************************************"
            echo "     Realizando la copia de seguridad"
            echo "*****************************************"
            sleep 5
            sudo chmod -R 777 /home/pi/Downloads/
            #Comprueba si existe el fichero info.ini
            if [ -f /home/pi/info.ini ];
            then
            echo ""
            else
            sudo cp /home/pi/$SCRIPTS_version/info.ini /home/pi
            fi
            #===============================================

match1=$(awk "NR==2" /home/pi/info.ini)
sed -i "1c $match1" /home/pi/info.ini
            sudo chmod +x -R /home/pi/Downloads
            cd /home/pi/MMDVMHost
            sudo cp -f TODOS_LOS_INIS.ini /home/pi/Downloads
            sudo cp -f MMDVM.ini /home/pi/Downloads
            sudo cp -f MMDVM.ini_copia /home/pi/Downloads
            sudo cp -f MMDVM.ini_copia2 /home/pi/Downloads
            sudo cp -f MMDVM.ini_copia3 /home/pi/Downloads
            sudo cp -f MMDVM.ini_original /home/pi/Downloads
            sudo cp -f MMDVMBM.ini /home/pi/Downloads
            sudo cp -f MMDVMBM.ini_copia /home/pi/Downloads
            sudo cp -f MMDVMBM.ini_copia2 /home/pi/Downloads
            sudo cp -f MMDVMBM.ini_copia3 /home/pi/Downloads
            sudo cp -f MMDVMLIBRE.ini /home/pi/Downloads
            sudo cp -f MMDVMLIBRE.ini_uno /home/pi/Downloads
            sudo cp -f MMDVMLIBRE.ini_dos /home/pi/Downloads      
            sudo cp -f MMDVMPLUS.ini /home/pi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia /home/pi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia2 /home/pi/Downloads
            sudo cp -f MMDVMPLUS.ini_copia3 /home/pi/Downloads

            sudo cp -f MMDVMDMR2NXDN.ini /home/pi/Downloads
            sudo cp -f MMDVMDMR2YSF.ini /home/pi/Downloads

            cp -f /home/pi/DMR2NXDN/DMR2NXDN.ini  /home/pi/Downloads
            cp -f /home/pi/NXDNClients/NXDNGateway/NXDNGateway.ini  /home/pi/Downloads
            cp -f /home/pi/DMR2YSF/DMR2YSF.ini  /home/pi/Downloads

            #solo Dstar y solo Fusion
            cp -f MMDVMDSTAR.ini /home/pi/Downloads
            cp -f MMDVMFUSION.ini /home/pi/Downloads
            #fin  Dstar y solo Fusion 

            cd  /home/pi/YSF2DMR
            cp -f YSF2DMR.ini /home/pi/Downloads
            cp -f YSF2DMR.ini_copia_01 /home/pi/Downloads
            cp -f YSF2DMR.ini_copia_02 /home/pi/Downloads
            cp -f YSF2DMR.ini_copia_03 /home/pi/Downloads
            cp -f YSF2DMR.ini_copia_04 /home/pi/Downloads

            cd  /home/pi/DMR2YSF
            cp -f TG-YSFList.txt /home/pi/Downloads

            cd  /home/pi/YSFClients/YSFGateway/
            sudo cp -f YSFGateway.ini /home/pi/Downloads
            
            cd /home/pi/bluedv/
            sudo cp -f BlueDVconfig.ini /home/pi/Downloads

            cd /usr/local/etc/svxlink/
            sudo cp -f svxlink.conf /home/pi/Downloads

            cd /usr/local/etc/svxlink/svxlink.d/
            sudo cp -f ModuleEchoLink.conf /home/pi/Downloads

            sudo cp /usr/local/etc/opendv/ircddbgateway /home/pi/Downloads
            sudo cp /usr/local/etc/opendv/dstarrepeater /home/pi/Downloads

            cd /home/pi
            sudo cp info_panel_control.ini /home/pi/Downloads

                  echo ""
                  echo "Ok, se ha ejecutado correctamente"
                  echo ""
                  break;;
                  [nN]* ) echo ""
                  break;;
esac
done;;
2) echo ""
while true
do
clear
            ejecutar1=S
            case $ejecutar1 in
            [sS]* ) echo ""
echo "\33[1;36m" #color cian
read -p 'QUIERES SEGUIR ADELANTE S/N ? ' sino
  case $sino in
      s|S) 
clear
echo "\33[1;32m" #color verde
echo "*********************************************"
echo "*     SE ESTÁ REALIZANDO LA RESTAURACIÓN    *"
echo "*********************************************"
sleep 3

            sudo chmod -R 777 /home/pi/Downloads
            cd /home/pi/Downloads
            sudo cp -f TODOS_LOS_INIS.ini /home/pi/MMDVMHost
            sudo cp -f MMDVM.ini /home/pi/MMDVMHost
            sudo cp -f MMDVM.ini_copia /home/pi/MMDVMHost
            sudo cp -f MMDVM.ini_copia2 /home/pi/MMDVMHost
            sudo cp -f MMDVM.ini_copia3 /home/pi/MMDVMHost
            sudo cp -f MMDVM.ini_original /home/pi/MMDVMHost
            sudo cp -f MMDVMBM.ini /home/pi/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia /home/pi/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia2 /home/pi/MMDVMHost
            sudo cp -f MMDVMBM.ini_copia3 /home/pi/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini /home/pi/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_uno /home/pi/MMDVMHost
            sudo cp -f MMDVMLIBRE.ini_dos /home/pi/DoMMDVMHost     
            sudo cp -f MMDVMPLUS.ini /home/pi/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia /home/pi/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia2 /home/pi/MMDVMHost
            sudo cp -f MMDVMPLUS.ini_copia3 /home/pi/MMDVMHost

            #solo Dstar y solo Fusion
            sudo cp -f MMDVMDSTAR.ini /home/pi/MMDVMHost
            sudo cp -f MMDVMFUSION.ini /home/pi/MMDVMHost
            #fin  Dstar y solo Fusion

            cp -f YSF2DMR.ini /home/pi/YSF2DMR
            cp -f YSF2DMR.ini_copia_01 /home/pi/YSF2DMR
            cp -f YSF2DMR.ini_copia_02 /home/pi/YSF2DMR
            cp -f YSF2DMR.ini_copia_03 /home/pi/YSF2DMR
            cp -f YSF2DMR.ini_copia_04 /home/pi/YSF2DMR
            
            cp -f TG-YSFList.txt /home/pi/DMR2YSF

            cp -f MMDVMDMR2NXDN.ini /home/pi/MMDVMHost
            cp -f MMDVMDMR2YSF.ini /home/pi/MMDVMHost

            cp -f DMR2NXDN.ini  /home/pi/DMR2NXDN
            cp -f NXDNGateway.ini /home/pi/NXDNClients/NXDNGateway
            cp -f DMR2YSF.ini /home/pi/DMR2YSF

            sudo cp -f YSFGateway.ini /home/pi/YSFClients/YSFGateway/

            sudo cp -f BlueDVconfig.ini /home/pi/bluedv/

            sudo cp -f svxlink.conf /usr/local/etc/svxlink/
            
            sudo cp -f ModuleEchoLink.conf /usr/local/etc/svxlink/svxlink.d/

            cp ircddbgateway /usr/local/etc/opendv/
            cp dstarrepeater /usr/local/etc/opendv/

            cp info_panel_control.ini /home/pi/

;;
      *)
         clear
echo "\33[1;31m" #color rojo
echo "*********************************************"
echo "*        NO SE HIZO LA RESTAURACIÓN         *"
echo "*********************************************"
sleep 3
      ;;
      esac
                  echo ""
                  echo "Ok, se ha ejecutado correctamente"
                  echo ""
                  break;;
                  [nN]* ) echo ""
                  break;;
esac
done;;
0) echo ""
clear
echo "\33[1;33m   ******************************"
echo "   *                            *"
echo "   *     CERRANDO SCRIPT        *"
echo "   *                            *"
echo "   ******************************"
sleep 1
clear
exit;;	
esac
done


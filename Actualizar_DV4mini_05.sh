#!/bin/bash
clear
while true
do
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
echo "${VERDE}" 
echo "   *********************************************************************"
echo "   *                                                                   *"
echo "   *           Script para Actualizar \33[1;33mDV4MINI           \33[1;31m by EA3EIZ\33[1;32m     *"
echo "   *                                                                   *"
echo "   *********************************************************************"
echo  "\33[1;36m   1)\33[1;33m Actualizar \33[1;32mDV4MINI20190307   \33[1;33m"
echo  "\33[1;36m   2)\33[1;33m Volver a la versión \33[1;32mDV4MINI20190127   \33[1;33m"
echo  "\33[1;36m   3)\33[1;33m Volver a la versión \33[1;32mDV4MINI20170517   \33[1;33m"
echo  "\33[1;36m   4)\33[1;33m Actualizar \33[1;32mDV4MINI20190307${AMARILLO} (NEW)   \33[1;33m"
echo  "\33[1;36m   5)\33[1;33m Actualizar \33[1;32mDV4MINI-RPI_2020_03_03${AMARILLO} (NEW)   \33[1;33m"

echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu
case $escoger_menu in
1) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r /home/pi/$SCRIPTS_version/DV4MINI/
                        cd /home/pi/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r /home/pi/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir /home/pi/dv4mini
                        cd /home/pi/$SCRIPTS_version/DV4MINI/20190307
                        cp dv_serial /home/pi/dv4mini
                        cp dv4mini.exe /home/pi/dv4mini
                        cp xref.ip /home/pi/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd /home/pi/dv4mini
                        sudo chmod 777 dv_serial
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
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
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r /home/pi/$SCRIPTS_version/DV4MINI/
                        cd /home/pi/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r /home/pi/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir /home/pi/dv4mini
                        cd /home/pi/$SCRIPTS_version/DV4MINI/20190127
                        cp dv_serial /home/pi/dv4mini
                        cp dv4mini.exe /home/pi/dv4mini
                        cp xref.ip /home/pi/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd /home/pi/dv4mini
                        sudo chmod 777 dv_serial
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
3) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r /home/pi/$SCRIPTS_version/DV4MINI/
                        cd /home/pi/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r /home/pi/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir /home/pi/dv4mini
                        cd /home/pi/$SCRIPTS_version/DV4MINI/20170517
                        cp dv_serial /home/pi/dv4mini
                        cp dv4mini.exe /home/pi/dv4mini
                        cp xref.ip /home/pi/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd /home/pi/dv4mini
                        sudo chmod 777 dv_serial
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
4) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r /home/pi/$SCRIPTS_version/DV4MINI/
                        cd /home/pi/$SCRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r /home/pi/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir /home/pi/dv4mini
                        cd /home/pi/$SCRIPTS_version/DV4MINI/20190307new
                        cp dv_serial /home/pi/dv4mini
                        cp dv4mini.exe /home/pi/dv4mini
                        cp xref.ip /home/pi/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd /home/pi/dv4mini
                        sudo chmod 777 dv_serial
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
5) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        sudo rm -r /home/pi/$CRIPTS_version/DV4MINI/
                        cd /home/pi/$CRIPTS_version
                        git clone http://github.com/ea3eiz/DV4MINI
                        sudo rm -r /home/pi/dv4mini
                        sudo rm /usr/bin/dv_serial
                        sudo mkdir /home/pi/dv4mini
                        sudo chmod 777 -R /home/pi/dv4mini
                        cd /home/pi/$CRIPTS_version/DV4MINI/DV4MINI-RPI_2020_03_03
                        cp dv_serial /home/pi/dv4mini
                        cp dv4mini.exe /home/pi/dv4mini
                        cp xref.ip /home/pi/dv4mini
                        sudo cp dv_serial /usr/bin/
                        cd /usr/bin/
                        sudo chmod 777 dv_serial
                        cd /home/pi/dv4mini
                        sudo chmod 777 dv_serial
                        clear
                        echo "************************************"
                        echo "*** SE HA ACTUALIZADO CON EXITO  ***"
                        echo "************************************"
                        sleep 3                        
                        clear
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


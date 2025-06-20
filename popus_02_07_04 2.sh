#!/bin/bash
while true
do
clear
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
echo "${VERDE}"
echo "   *************************************************************************"
echo "   *                                                                       *"
echo "   *${AMARILLO}                HAY UNA NUEVA VERSION V.02.07.04${VERDE}                       *"
echo "   *                                                                       *"
echo "   *************************************************************************"
echo "${BLANCO}"
echo "   La podeis descargar desde la web:"
echo "   http://www.associacioader.com"
echo ""
echo "${CIAN}   1)${VERDE} No volver a mostrar esta pantalla"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu

case $escoger_menu in

1) echo ""
while true
do
                           actualizar=S 
                           case $actualizar in
			                     [sS]* ) echo ""
                           sed -i "3c Exec=sh -c 'cd /home/pi/V30;lxterminal --geometry=80x25 -e sudo sh popus_02_07_04_NO.sh'" /home/pi/.config/autostart/popus_02_07_04.desktop
                           exit;
			                     break;;
			                     [nN]* ) echo ""
			                     break;;
esac
done;;
0) echo ""
clear
echo "\33[1;33m   **************************************************"
echo "   *                                                *"
echo "   *     CERRANDO SCRIPT                            *"
echo "   *                                                *"
echo "   **************************************************"
sleep 1
clear
exit;;	
esac
done


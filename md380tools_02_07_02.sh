#!/bin/bash
# script para instalar md380tools
while true
do
clear
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
echo "${VERDE}"
echo "   ********************************************************************"
echo "   *                                                                  *"
echo "   *      Script para Instalar firmware experimental md380tools       *"
echo "   *\33[1;31m                          by EA3EIZ\33[1;32m                               *"
echo "   *                                                                  *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;31m  Actualizar la Raspberry Pi (si ha pasado tiempo sin actualizarla)"
echo "\33[1;36m   2)\33[1;37m  Instalar md380tools"
echo "\33[1;36m   3)\33[1;33m  Introducir firmware experimental en Walki MD380 sin GPS"
echo "\33[1;36m   4)\33[1;33m  Introducir firmware experimental en Walki MD380 y MD390 con GPS"
echo ""
echo "\33[1;32m   ********************************************************************"
echo "   *  Cuando creamos que puede haber una nueva versión de md380tools  *"
echo "   *  procederemos a su la actualización utilizando el apartado 7)    *"
echo "   *                                                                  *"
echo "   ********************************************************************"
echo ""
echo "\33[1;36m   7)\33[1;31m Actualizar md380tools"
echo ""
echo "\33[1;32m   ********************************************************************"
echo "   *  después de haber actualizado ya podemos volver a introducir el  *"
echo "   *  firmware y la base de datos users.csv a partir del punto 3)     *"
echo "   *                                                                  *"
echo "   ********************************************************************"
echo "\33[0m "
echo "\33[1;36m  8)\33[1;33m Introducir firmware original D03.020 (Old vocoder)"
echo "\33[1;36m  9)\33[1;33m Introducir firmware original D13.020 (new vocoder)"
echo ""
echo "\33[1;36m  0)\33[1;34m Salir del script"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 9: " 
read escoger_menu
echo ""

case $escoger_menu in
1) echo ""
while true
do
clear

            read -p 'Quieres Actualizar? Si/No: ' actualizar
            case $actualizar in
            [sS]* ) echo ""
            echo "${AMARILLO}"
            echo "Estado: Actualizando >>>>>"
            sudo apt-get update
            echo "${VERDE}"
            echo "A finalizado el update. Pulsa una tecla para continuar"
            read a
             echo "${AMARILLO}"
            sudo apt-get upgrade
            echo "${VERDE}"
            echo "A finalizado el upgrade. Pulsa una tecla para finalizar"
            read a
            echo ""
            echo "Ok, se ha actualizado correctamente"
            echo ""
            break;;
            [nN]* ) echo ""
            break;;
esac
done;;
2) 	echo ""
while true
do
clear
			echo ""
			echo ""
			echo ""
		            read -p 'Descargar e instalar md380tools? Si/No ' installvar
			case $installvar in
			[sS]* ) echo ""
			echo "Descargando md380tools"
                                    sudo apt-get install gcc-arm-none-eabi binutils-arm-none-eabi libusb-1.0 libnewlib-arm-none-eabi python-usb
                                    sleep 1
                                    sudo apt-get install python-pip
                                    sleep 1
                                    sudo pip install pyusb -U
                                    sleep 1
                                    sudo apt-get install git
                                    sleep 1
                                    cd /home/pi/
                                    sudo rm -r md380tools
                                    git clone https://github.com/travisgoodspeed/md380tools.git
                                    
			break;;
			[nN]* ) echo ""
			echo ""
			echo ""
			echo "volver"
			echo ""
			echo ""
			echo ""
			break;;			
esac
done;;
3) 	echo ""
while true
do
clear
        echo "\33[1;31m***************************************************************************"
        echo "* Conectamos el cable de programación en el USB de la Raspi y en Walki    *"
        echo "* Ponemos el walki en modo DFU de la siguiente manera:                    *"
        echo "* Apagamos y encendemos el Walki pulsando la tecla PTT+la tecla de arriba *"
        echo "***************************************************************************"
        echo "\33[1;32m "
        read -p 'Quieres Introducir el firmware experimental bajo tu propio riesgo? Si/No ' installvar1
			case $installvar1 in
			[sS]* ) echo ""
                                    clear
			echo "Introduciendo firmware experimental"
                                    cd /home/pi/md380tools
                                    sudo git pull
                                    sudo make clean
                                    sudo make flash
      			break;;
			[nN]* ) echo ""
			echo ""
			echo ""
			echo "volver"
			echo ""
			echo ""
			echo ""
			break;;			
esac
done;;
4)      echo ""
while true
do
clear
        echo "\33[1;31m***************************************************************************"
        echo "* Conectamos el cable de programación en el USB de la Raspi y en Walki    *"
        echo "* Ponemos el walki en modo DFU de la siguiente manera:                    *"
        echo "* Apagamos y encendemos el Walki pulsando la tecla PTT+la tecla de arriba *"
        echo "***************************************************************************"
        echo "\33[1;32m "
        read -p 'Quieres Introducir el firmware experimental bajo tu propio riesgo? Si/No ' installvar4
                        case $installvar4 in
                        [sS]* ) echo ""
                        clear
                        echo "Introduciendo firmware experimental"
                        cd /home/pi/md380tools
                        sudo gitpull
                        sudo make clean
                        sudo make flash_S13
                        break;;
                        [nN]* ) echo ""
                        echo ""
                        echo ""
                        echo "volver"
                        echo ""
                        echo ""
                        echo ""
                        break;;
esac
done;;
7)    echo ""
while true
do
clear
			echo ""
			echo ""
			echo ""
		            read -p 'Quieres actualizar por si hay una nueva versión del md380tools? Si/No ' installvar6
			case $installvar6 in
			[sS]* ) echo ""
                                    clear
			echo "Actualizando una nueva versión del md380tools"
                                    cd /home/pi/
                                    sudo rm -r md380tools
                                    git clone https://github.com/travisgoodspeed/md380tools.git
                                   
			break;;
			[nN]* ) echo ""
			echo ""
			echo ""
			echo "volver"
			echo ""
			echo ""
			echo ""
			break;;			
esac
done;;
8)      echo ""
while true
do
clear
        echo "\33[1;31m***************************************************************************"
        echo "* Conectamos el cable de programación en el USB de la Raspi y en Walki    *"
        echo "* Ponemos el walki en modo DFU de la siguiente manera:                    *"
        echo "* Apagamos y encendemos el Walki pulsando la tecla PTT+la tecla de arriba *"
        echo "***************************************************************************"
        echo "\33[1;32m "
                        read -p 'Quieres Introducir el firmware original D03.020 ? Si/No ' installvar7
                        case $installvar7 in
                        [sS]* ) echo ""
                        clear
                        echo "Introduciendo firmware original D03.020"
                        cd md380tools
                        sudo make clean
                        sudo make flash_original_D03
                        break;;
                        [nN]* ) echo ""
                        echo ""
                        echo ""
                        echo "volver"
                        echo ""
                        echo ""
                        echo ""
                        break;;
esac
done;;
9)      echo ""
while true
do
clear
        echo "\33[1;31m***************************************************************************"
        echo "* Conectamos el cable de programación en el USB de la Raspi y en Walki    *"
        echo "* Ponemos el walki en modo DFU de la siguiente manera:                    *"
        echo "* Apagamos y encendemos el Walki pulsando la tecla PTT+la tecla de arriba *"
        echo "***************************************************************************"
        echo "\33[1;32m "
                        read -p 'Quieres Introducir el firmware original D13.020 ? Si/No ' installvar8
                        case $installvar8 in
                        [sS]* ) echo ""
                        clear
                        echo "Introduciendo firmware original D13.020"
                        cd md380tools
                        sudo make clean
                        sudo make flash_original_D13
                        break;;
                        [nN]* ) echo ""
                        echo ""
                        echo ""
                        echo "volver"
                        echo ""
                        echo ""
                        echo ""
                        break;;
esac
done;;
0) echo ""
clear
echo "\33[1;33m   **************************************************"
echo "   *                                                *"
echo "   *     CERRANDO SCRIPT md380tools    by EA3EIZ    *"
echo "   *                                                *"
echo "   **************************************************"
sleep 1
clear
exit;;	
esac
done


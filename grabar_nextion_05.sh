#!/bin/bash
while true
do
clear
echo "\33[1;32m   ********************************************************************"
echo "   *      Script para Grabar pantallas Nextion \33[1;33mV.02.07.06             \33[1;32m*"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                               *"
echo "   ********************************************************************"
echo '\33[1;36m   1)\33[1;37m Grabar pantalla Nextion 2.4" con Logo ADER SIN FRECUENCIA'
echo '\33[1;36m   2)\33[1;37m Grabar pantalla Nextion 2.4" con Logo ADER FRECUENCIA 144.687.500'
echo '\33[1;36m   3)\33[1;37m Grabar pantalla Nextion 2.4" con Logo ADER FRECUENCIA 431.200.000'
echo '\33[1;36m   4)\33[1;37m Grabar pantalla Nextion 2.4" con Logo ADER FRECUENCIA 433.450.000'
echo '\33[1;36m   5)\33[1;37m Grabar pantalla Nextion 2.4" con Logo ADER FRECUENCIA 434.400.000'
echo '\33[1;36m   6)\33[1;37m Grabar pantalla Nextion 2.4" con Logo ADER FRECUENCIA 435.100.000'
echo '\33[1;36m   7)\33[1;37m Grabar pantalla Nextion 2.4" con Logo ADER FRECUENCIA 436.000.000'
echo '\33[1;36m   8)\33[1;37m Grabar pantalla Nextion 2.4" con Logo ADER FRECUENCIA 437.000.000'
echo '\33[1;36m   9)\33[1;37m Grabar pantalla Nextion 2.4" con Logo ADER FRECUENCIA 438.175.000'
echo '\33[1;36m  10)\33[1;37m Grabar pantalla Nextion 2.4" con Logo ADER FRECUENCIA 439.900.000'
echo ""
echo '\33[1;36m   11)\33[1;32m Grabar pantalla Nextion 2.4" MMDVM original'
echo '\33[1;36m   12)\33[1;32m Grabar pantalla Nextion 2.8" MMDVM original'
echo '\33[1;36m   13)\33[1;32m Grabar pantalla Nextion 3.2" MMDVM original'
echo '\33[1;36m   14)\33[1;32m Grabar pantalla Nextion 4.3" MMDVM original'
echo ""
echo '\33[1;36m   15)\33[1;32m Grabar pantalla Nextion 2.4" para NextionDriver'
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
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
			            echo ">>>>>>>>> SIN_FRECUENCIA_ADER_24.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
			            cd /home/pi/MMDVMHost/Nextion_DB2OE
			            sudo rm SIN_FRECUENCIA_ADER*.*
			            wget http://associacioader.com/SIN_FRECUENCIA_ADER_24.tft
                        sudo python nextion.py SIN_FRECUENCIA_ADER_24.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
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
			            echo ">>>>>>>>> 144687500NEXTION_ADER_24.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
			            cd /home/pi/MMDVMHost/Nextion_DB2OE
			            sudo rm 144687500NEXTION_ADER_24.tft
			            wget http://associacioader.com/144687500NEXTION_ADER_24.tft
                        sudo python nextion.py 144687500NEXTION_ADER_24.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
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
			            echo ">>>>>>>>> 431200NEXTION_ADER_24.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
			            cd /home/pi/MMDVMHost/Nextion_DB2OE
			            sudo rm 431200NEXTION_ADER_24.tft
			            wget http://associacioader.com/431200NEXTION_ADER_24.tft
                        sudo python nextion.py 431200NEXTION_ADER_24.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
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
			            echo ">>>>>>>>> 433450NEXTION_ADER_24.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
			            cd /home/pi/MMDVMHost/Nextion_DB2OE
			            sudo rm 433450NEXTION_ADER_24.tft
			            wget http://associacioader.com/433450NEXTION_ADER_24.tft
                        sudo python nextion.py 433450NEXTION_ADER_24.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
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
			            echo ">>>>>>>>> 434400NEXTION_ADER_24.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
			            cd /home/pi/MMDVMHost/Nextion_DB2OE
			            sudo rm 434400NEXTION_ADER_24.tft
			            wget http://associacioader.com/434400NEXTION_ADER_24.tft
                        sudo python nextion.py 434400NEXTION_ADER_24.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
6) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> 435100NEXTION_ADER_24.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
			            cd /home/pi/MMDVMHost/Nextion_DB2OE
			            sudo rm 435100NEXTION_ADER_24.tft
			            wget http://associacioader.com/435100NEXTION_ADER_24.tft
                        sudo python nextion.py 435100NEXTION_ADER_24.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
7) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> 436000NEXTION_ADER_24.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE

			            cd /home/pi/MMDVMHost/Nextion_DB2OE
			            sudo rm 436000NEXTION_ADER_24.tft
			            wget http://associacioader.com/436000NEXTION_ADER_24.tft
                        sudo python nextion.py 436000NEXTION_ADER_24.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
8) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> 437000NEXTION_ADER_24.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
			            cd /home/pi/MMDVMHost/Nextion_DB2OE
			            sudo rm 437000NEXTION_ADER_24.tft
			            wget http://associacioader.com/437000NEXTION_ADER_24.tft
                        sudo python nextion.py 437000NEXTION_ADER_24.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
9) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> 438175NEXTION_ADER_24.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
			            cd /home/pi/MMDVMHost/Nextion_DB2OE
			            sudo rm 438175NEXTION_ADER_24.tft
			            wget http://associacioader.com/438175NEXTION_ADER_24.tft
                        sudo python nextion.py 438175NEXTION_ADER_24.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
10) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> 439900NEXTION_ADER_24.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
			            cd /home/pi/MMDVMHost/Nextion_DB2OE
			            sudo rm 439900NEXTION_ADER_24.tft
			            wget http://associacioader.com/439900NEXTION_ADER_24.tft
                        sudo python nextion.py 439900NEXTION_ADER_24.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
11) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL 2.4 pulgadas >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
                        cd /home/pi/MMDVMHost/Nextion_DB2OE
                        sudo python nextion.py NX3224T024.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						#
						exit;
						break;;
esac
done;;
12) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL 2.8 pulgadas >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
                        cd /home/pi/MMDVMHost/Nextion_DB2OE
                        sudo python nextion.py NX3224T028.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
13) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL 3.2 pulgadas >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
                        cd /home/pi/MMDVMHost/Nextion_DB2OE
                        sudo python nextion.py NX3224T032.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
14) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> GRABAR NEXTION ORIGINAL 4.3 pulgadas >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al Aleman DB20E
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_DB2OE
                        cd /home/pi/MMDVMHost/Nextion_DB2OE
                        sudo python nextion.py NX3224T043.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
						break;;
esac
done;;
15) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> NextionDriver ADER_07.tft >>>>>>>>"
			            #pasa el fichero nextion.py del Ingles G4KLX al ON7LDS
			            sudo cp -f /home/pi/MMDVMHost/Nextion_G4KLX/nextion.py /home/pi/MMDVMHost/Nextion_ON7LDS
			            cd /home/pi/MMDVMHost/Nextion_ON7LDS
			            sudo rm ADER_07.tft
			            wget http://associacioader.com/ADER_07.tft
                        sudo python nextion.py ADER_07.tft /dev/ttyUSB0
                        sleep 10
		                break;;
		                [nN]* ) echo ""
						clear
						exit;
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


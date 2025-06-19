#!/bin/bash
while true
do
clear

echo "\33[1;32m   ********************************************************************"
echo "   *      Script para hacer actualizaciones y varios \33[1;33mV.02.05          *"
echo "   *                          \33[1;31mby EA3EIZ\33[1;32m                               *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;37m Actualizar BlueDV"
echo "\33[1;36m   2)\33[1;37m Volver a la versión anterior del BlueDV"
#echo "\33[1;36m   2)\33[1;37m Actualizar DV4mini Control Panel (Stick ID:8D-6E-8C V1,77)"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción del 0 al 2: " 
read escoger_menu
echo ""
case $escoger_menu in
1) echo ""
while true
do
clear
echo "\33[1;33m"
	        read -p ' Quieres actualizar el BlueDV Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
if [ -d /home/pi/bluedv_anterior/ ];
then
			clear
			echo "\33[1;32mYA TIENES ACTUALIZADA LA ÚLTIMA VERSIÓN DISPONIBLE"
			sleep 1
			clear
			echo "\33[1;31mYA TIENES ACTUALIZADA LA ÚLTIMA VERSIÓN DISPONIBLE"
			sleep 1
			clear
			echo "\33[1;32mYA TIENES ACTUALIZADA LA ÚLTIMA VERSIÓN DISPONIBLE"
			sleep 1
			clear
			echo "\33[1;31mYA TIENES ACTUALIZADA LA ÚLTIMA VERSIÓN DISPONIBLE"
			sleep 1
			clear
			echo "\33[1;32m******************************************************"
			echo "\33[1;32m* YA TIENES ACTUALIZADA LA ÚLTIMA VERSIÓN DISPONIBLE *"
			echo "\33[1;32m******************************************************"
			sleep 5
else
			cd /home/pi/
  			mkdir bluedv_anterior
            sudo cp bluedv/*.* bluedv_anterior/
            sudo rm -r /home/pi/bluedv
			git clone https://github.com/ea3eiz/bluedv
			
			cd /home/pi/bluedv
			sudo chmod 777 DExtra_Hosts.txt
		
fi	
			echo "\33[1;32m******************************************************"
			echo "\33[1;32m*  SE HA ACTUALIZADO A LA ÚLTIMA VERSIÓN DISPONIBLE  *"
			echo "\33[1;32m******************************************************"
			sleep 3
exit;
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
echo "\33[1;33m"
	        read -p ' Quieres volver a la versión anterior Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
if [ -d /home/pi/bluedv_anterior/ ];
then
			clear
			echo "\33[1;32mVOLVIENDO A LA VERSIÓN ANTERIOR"
			sleep 1
			clear
			echo "\33[1;31mVOLVIENDO A LA VERSIÓN ANTERIOR"
			sleep 1
			clear
			echo "\33[1;32mVOLVIENDO A LA VERSIÓN ANTERIOR"
			sleep 1
			clear
			echo "\33[1;31mVOLVIENDO A LA VERSIÓN ANTERIOR"
			sleep 1
			clear
			echo "\33[1;32m***********************************"
			echo "\33[1;32m* VOLVIENDO A LA VERSIÓN ANTERIOR *"
			echo "\33[1;32m***********************************"
			sleep 5
						cd /home/pi/
            sudo cp bluedv_anterior/*.* bluedv/
            sudo rm -R bluedv_anterior
			
else
			


clear
			echo "\33[1;32mYA ESTÁS EN LA VERSIÓN ANTERIOR, NO HAS ACTUALIZADO NUNCA"
			sleep 1
			clear
			echo "\33[1;31mYA ESTÁS EN LA VERSIÓN ANTERIOR, NO HAS ACTUALIZADO NUNCA"
			sleep 1
			clear
			echo "\33[1;32mYA ESTÁS EN LA VERSIÓN ANTERIOR, NO HAS ACTUALIZADO NUNCA"
			sleep 1
			clear
			echo "\33[1;31mYA ESTÁS EN LA VERSIÓN ANTERIOR, NO HAS ACTUALIZADO NUNCA"
			sleep 1
			clear
			echo "\33[1;32m*************************************************************"
			echo "\33[1;32m* YA ESTÁS EN LA VERSIÓN ANTERIOR, NO HAS ACTUALIZADO NUNCA *"
			echo "\33[1;32m*************************************************************"
			sleep 5


sleep 5

		
fi	
exit;
		    echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
30000) echo ""
while true
do
clear
echo "\33[1;33m"
	        read -p ' Quieres actualizar el BlueDV Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"

if [ -d /home/pi/bluedv_anterior/ ];
then
echo "Sí, sí existe."
else
echo "No, no existe"
fi
	read a
		    echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
31) echo ""
while true
do
clear
	        ejecutar1=S
		    case $ejecutar1 in
		    [sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_1
                                    sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_1
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_1
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
32) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_2
                                    sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_2
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_2
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
33) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_3
                                    sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_3
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_3
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
34) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_4
                                    sed -i "5c Icon=/home/pi/V30/OCULTO.png" /home/pi/Desktop/Boton_4
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_4
  		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
41) echo ""
while true
do
clear
	        ejecutar1=S
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
			cd /home/pi/MMDVMHost
			sudo cp MMDVMHost MMDVMSOLODSTAR
			sudo cp MMDVMBM.ini MMDVMSOLODSTAR.ini
                                    sed -i "4c Exec=sh -c 'cd /home/pi/V30/;sudo sh ejecutar_solodstar_04.sh'" /home/pi/Desktop/Boton_1
                                    sed -i "5c Icon=/home/pi/V30/SOLO_DSTAR.png" /home/pi/Desktop/Boton_1
                                    sed -i "10c Name[es_ES]=Abrir solo D_STAR" /home/pi/Desktop/Boton_1
                                    sed -i "9c Terminal=true" /home/pi/Desktop/Boton_1
		    echo ""
		    echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
42) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c 'cd /home/pi/V30/;lxterminal --geometry=80x47 -e sudo sh actualizar_IDS_MMDVMHost.sh'" /home/pi/Desktop/Boton_2
                                    sed -i "5c Icon=/home/pi/V30/EDITAR.png" /home/pi/Desktop/Boton_2
                                    sed -i "10c Name[es_ES]=Actualizar IDS MMDVMHost" /home/pi/Desktop/Boton_2
		            echo ""0
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
43) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c """ /home/pi/Desktop/Boton_3
                                    sed -i "5c Icon=/home/pi/V30/AUTOARRANQUE.png" /home/pi/Desktop/Boton_3
                                    sed -i "10c Name[es_ES]=." /home/pi/Desktop/Boton_3
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
44) echo ""
while true
do
clear
	                        ejecutar1=S
		            case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"
                                    sed -i "4c Exec=sh -c 'cd /home/pi/V30;sudo sh actualizar_YSF_30.sh'" /home/pi/Desktop/Boton_4
                                    sed -i "5c Icon=/home/pi/V30/ACTUALIZAR_BD.png" /home/pi/Desktop/Boton_4
                                    sed -i "10c Name[es_ES]=Actualizar YSF" /home/pi/Desktop/Boton_4
		            echo ""
			echo "Ok, se ha ejecutado correctamente"
			echo ""
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
1a) echo ""
while true
do
clear
echo "\33[1;33m"
	        read -p ' Quieres actualizar el BlueDV Si/No: ' ejecutar1
		    case $ejecutar1 in
			[sS]* ) echo ""
			echo "ok >>>>>"

			cd /home/pi/
  			#mkdir bluedv_anterior
            #sudo cp bluedv/*.* bluedv_anterior/
            sudo rm -r /home/pi/bluedv
			git clone https://github.com/ea3eiz/bluedv09488
			
			cd /home/pi/bluedv
			sudo chmod 777 DExtra_Hosts.txt			
			echo "\33[1;32m******************************************************"
			echo "\33[1;32m*  SE HA ACTUALIZADO A LA ÚLTIMA VERSIÓN DISPONIBLE  *"
			echo "\33[1;32m******************************************************"
			sleep 3
exit;
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


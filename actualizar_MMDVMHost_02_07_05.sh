#!/bin/bash
while true
do
clear
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
echo "${VERDE}"



echo "${VERDE}\v\v"
echo "   *********************************************************************"
echo ""
echo "${AMARILLO}                           Actualizar MMDVMHost "
echo " "
echo "${BLANCO}                       DESHABILITADO TEMPORALMENTE "
echo "${VERDE}"
echo "   *********************************************************************"
echo ""
echo -n "${CIAN}  Pulsa enter para cerrar esta ventana: "
read a
exit;



echo "   *********************************************************************"
echo "   *                                                                   *"
echo "   *           Script para Actualizar MMDVMHost         \33[1;31m by EA3EIZ\33[1;32m     *"
echo "   *                                                                   *"
echo "   *********************************************************************"
echo  "${CIAN}   1)${VERDE} Instalación limpia de MMDVMHost (Incluye System Fusion II)\33[1;33m"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu
case $escoger_menu in
1) echo ""
while true
do
clear
                    echo "${ROJO}"
                    echo " *********************************************************************"
                    echo " * Si instalas MMDVMhost desde esta opción, perderás todas las       *"
                    echo " * configuraciones y tendrás que volver a configurar los .ini        *"
                    echo " * Desde el icono Editor GENERAL podras configurarlos todos a la vez *"
                    echo " *********************************************************************"
                    echo "${VERDE}"
                    read -p '  Quieres hacer una instalación limpia de MMDVMHost? S/N: ' ejecutar1
                    case $ejecutar1 in
                    [sS]* ) echo ""
                    echo "ok >>>>>"
                    cd /home/pi 
                    sudo rm -r /home/pi/MMDVMHost
                    git clone https://github.com/g4klx/MMDVMHost
                    #git clone https://github.com/ea3eiz/MMDVMHost
                    cd /home/pi/MMDVMHost

                    HOY=$(date +%Y%m%d)
                    FIJA="const char* VERSION = "\"
                    PI="ADER7"\"
                    HOY1=$HOY$PI
                    PUNTO=";"   
                    

                    sed -i "22c $FIJA$HOY1$PUNTO" /home/pi/MMDVMHost/Version.h

sudo cp /home/pi/$SCRIPTS_version/YSFControl.cpp /home/pi/MMDVMHost
                    
                    make clean
                    make

                    # Crea los ejecutables para estas aplicaciones 
                    sudo cp MMDVMHost MMDVMBM
                    sudo cp MMDVMHost MMDVMPLUS
                    sudo cp MMDVMHost MMDVMDSTAR
                    sudo cp MMDVMHost MMDVMFUSION
                    sudo cp MMDVMHost DMR2NXDN
                    sudo cp MMDVMHost DMR2YSF
                    #=================================================

                    # Rutina solo para el LIBRE ======================
                    cd /home/pi/$SCRIPTS_version
                    cp MMDVMHostLIBRE /home/pi/MMDVMHost
                    cp MMDVMLIBRE.ini /home/pi/MMDVMHost
                    cd /home/pi/MMDVMHost
                    sudo chmod +x MMDVMHostLIBRE
                    #=================================================

                    # Crea los ficheros de Memorias ==================
                    cp MMDVM.ini MMDVM.ini_original
                    cp MMDVM.ini MMDVM.ini_copia
                    cp MMDVM.ini MMDVM.ini_copia2
                    cp MMDVM.ini MMDVM.ini_copia3

                    cp MMDVM.ini MMDVMBM.ini
                    cp MMDVM.ini MMDVMBM.ini_copia
                    cp MMDVM.ini MMDVMBM.ini_copia2
                    cp MMDVM.ini MMDVMBM.ini_copia3

                    cp MMDVM.ini MMDVMPLUS.ini
                    cp MMDVM.ini MMDVMPLUS.ini_copia
                    cp MMDVM.ini MMDVMPLUS.ini_copia2
                    cp MMDVM.ini MMDVMPLUS.ini_copia3

                    cp MMDVM.ini MMDVMDSTAR.ini
                    cp MMDVM.ini MMDVMDSTAR.ini_copia
                    cp MMDVM.ini MMDVMDSTAR.ini_copia2
                    cp MMDVM.ini MMDVMDSTAR.ini_copia3

                    cp MMDVM.ini MMDVMFUSION.ini
                    cp MMDVM.ini MMDVMFUSION.ini_copia
                    cp MMDVM.ini MMDVMFUSION.ini_copia2
                    cp MMDVM.ini MMDVMFUSION.ini_copia3                 

                    cp MMDVMLIBRE.ini MMDVMLIBRE.ini_uno
                    cp MMDVMLIBRE.ini MMDVMLIBRE.ini_dos

                    cp MMDVM.ini TODOS_LOS_INIS.ini

                    cp MMDVM.ini MMDVMDMR2YSF.ini
                    
                    cp MMDVM.ini MMDVMDMR2NXDN.ini

                    #=================================================

                    sudo chmod +x -R /home/pi/MMDVMHost
                    
                    echo""
                    clear
                    exit;
                    echo ""
                    echo "Ok, se ha ejecutado correctamente"
                    echo ""
                    break;;
                    [nN]* ) echo ""
                    sleep 1
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


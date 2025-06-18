#!/bin/bash
while true
do
clear
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
echo "${VERDE}"
echo "   **************************************************************************"
echo "   *    CONFIGURA Y GRABA ESTOS PARAMETROS DE UNA SOLA VEZ TODOS LOS .ini   *"
echo "   *                             \33[1;31mby EA3EIZ \33[1;32m                                 *"
echo "   **************************************************************************"
echo""
echo -n "\33[1;36m   1)\33[0m Modificar indicativo  - \33[1;33m"
ind=`grep -n -m 1 "Callsign" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
ind1=`expr substr $ind 3 30`
echo "$ind1"

echo -n "\33[1;36m   2)\33[0m Modificar RXFrequency - \33[1;33m"
rxf=`grep -n "RXFrequency" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
rxf1=`expr substr $rxf 4 30`
echo "$rxf1"

echo -n "\33[1;36m   3)\33[0m Modificar TXFrequency - \33[1;33m"
txf=`grep -n "TXFrequency" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
txf1=`expr substr $txf 4 30`
echo "$txf1"

echo -n "\33[1;36m   4)\33[0m Modificar Location    - \33[1;33m"
loc=`grep -n "^Location=" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
loc1=`echo "$loc" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
numero_linea_location=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
contenido_location=$(awk "NR==$numero_linea" /home/pi/MMDVMHost/MMDVMPLUS.ini)
echo "$contenido_location"

echo -n "\33[1;36m   5)\33[0m Modificar URL         - \33[1;33m"
url=`grep -n "URL" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
url1=`expr substr $url 4 30`
echo "$url1"

echo -n "\33[1;36m   6)\33[0m Modificar ID          - \33[1;33m"
idd=`grep -n "Id=" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
idd1=`expr substr $idd 3 30`
echo "$idd1"

echo -n "\33[1;36m   7)\33[0m Baliza                - \33[1;33m"
cw= sed -n "31p"  /home/pi/MMDVMHost/TODOS_LOS_INIS.ini; #presenta el valor en pantalla

echo -n "\33[1;36m   8)\33[0m RFModeHang            - \33[1;33m"
modehang=`grep -n -m 1 -c '\<RFModeHang\>' /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
if [ $modehang = 0 ]; then
echo "\33[1;31mEsta versión MMDVMHost no trae este parámetro"
else
modehang=`grep -n -m 1 '\<RFModeHang\>' /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
modehang1=`expr substr $modehang 3 30`
echo "$modehang1"
fi

echo -n "\33[1;36m   9)\33[0m Timeout               - \33[1;33m"
timeo=`grep -n -m 1 -c '\<Timeout\>' /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
if [ $timeo = 0 ]; then
echo "\33[1;31mEsta versión MMDVMHost no trae este parámetro"
else
timeo=`grep -n -m 1 '\<Timeout\>' /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
timeo1=`expr substr $timeo 3 30`
echo "$timeo1"
fi

echo -n "\33[1;36m  10)\33[0m Modificar Duplex      - \33[1;33m"
dup=`grep -n -m 1 '\<Duplex\>' /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
dup1=`expr substr $dup 3 30`
echo "$dup1"

echo -n "\33[1;36m  11)\33[0m Coordenada Latitud    - \33[1;33m"
lat=`grep -n "Latitude" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
lat1=`expr substr $lat 4 30`
echo "$lat1"

echo -n "\33[1;36m  12)\33[0m Coordenada Longitud   - \33[1;33m"
long=`grep -n "Longitude" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
long1=`expr substr $long 4 30`
echo "$long1"

echo -n "\33[1;36m  13)\33[0m Modulo D-STAR         - \33[1;33m"
var=`grep -n -m 1 "\[D-Star\]" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
var1=`grep -m 1 "\[D-Star\]" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
numero_linea=`expr $numero_linea + 2` # y le suma uno qudando coomo: (75)
MODULE=$(awk "NR==$numero_linea" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini)
letra=c
linea_sed_MODULE=$numero_linea$letra
echo "$MODULE"

echo ""
echo "\33[1;36m  0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""

echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu

case $escoger_menu in
1) echo ""
while true
do
buscar=":"
largo=`expr index $ind $buscar`
echo "Valor actual Indicativo: \33[1;33m${ind#*=}\33[1;37m"
           	          read -p 'Introduce tu indicativo: ' tu_indicativo
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $ind 1 1`
                          else
                          linea=`expr substr $ind 1 1`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			        [sS]* ) echo ""

                          #Convierte indicativo si se introduce en minúsculas a Mayúsculas
                          tu_indicativo=`echo "$tu_indicativo" | tr [:lower:] [:upper:]`

			        tu_indicativo=`echo "$tu_indicativo" | tr -d '[[:space:]]'` # Anula los espacios
                          sed -i "$linea Callsign=$tu_indicativo" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini
sed -i "40c $tu_indicativo" /home/pi/info_panel_control.ini #escribe solo el indicativo
                        #iNDICATIVO PLUS
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
                        #iNDICATIVO BM
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini_copia
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
                        #iNDICATIVO RADIO
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini_copia
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini_copia2
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVM.ini_copia3
                        #iNDICATIVO LIBRE
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMLIBRE.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos

#Indicativo YSF
loc1=`grep -n "^Callsign=" /home/pi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
sed -i "$numero_linea_letrac Callsign=$tu_indicativo" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
                        
                        #iNDICATIVO YSF2DMR
                        sed -i "13c Callsign=$tu_indicativo" /home/pi/YSF2DMR/YSF2DMR.ini
                        sed -i "13c Callsign=$tu_indicativo" /home/pi/YSF2DMR/YSF2DMR.ini_copia_01
                        sed -i "13c Callsign=$tu_indicativo" /home/pi/YSF2DMR/YSF2DMR.ini_copia_02
                        sed -i "13c Callsign=$tu_indicativo" /home/pi/YSF2DMR/YSF2DMR.ini_copia_03
                        sed -i "13c Callsign=$tu_indicativo" /home/pi/YSF2DMR/YSF2DMR.ini_copia_04

                        #MMDVMDMR2YSF.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

                        #MMDVMDMR2NXDN.ini
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini

                        #iNDICATIVO SOLODSTAR
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMDSTAR.ini
                        #iNDICATIVO SOLOFUSION
                        sed -i "2c Callsign=$tu_indicativo" /home/pi/MMDVMHost/MMDVMFUSION.ini
                        
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
2) echo ""
while true
do
buscar=":"
largo=`expr index $rxf $buscar`
echo "Valor actual del RXFrequency: \33[1;33m${rxf#*=}\33[1;37m"

           	          read -p 'Introduce RXFrequency:        ' frecuenciarx
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $rxf 1 2`
                          else
                          linea=`expr substr $rxf 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""

            sed -i "$linea RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini
            #DMR+
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #Radio
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #LIBRE+
            sed -i "12c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "12c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "12c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos

#RXFrequency YSF
loc1=`grep -n "^RXFrequency=" /home/pi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
sed -i "$numero_linea_letrac RXFrequency=$frecuenciarx" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
            
            #YSF2DMR
            sed -i "2c RXFrequency=$frecuenciarx" /home/pi/YSF2DMR/YSF2DMR.ini
            sed -i "2c RXFrequency=$frecuenciarx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_01            
            sed -i "2c RXFrequency=$frecuenciarx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_02
            sed -i "2c RXFrequency=$frecuenciarx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_03
            sed -i "2c RXFrequency=$frecuenciarx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_04
             #MMDVMDMR2YSF.ini
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            #MMDVMDMR2NXDN.ini
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini


            #SOLODSTAR
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLO FUSION
            sed -i "13c RXFrequency=$frecuenciarx" /home/pi/MMDVMHost/MMDVMFUSION.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
3) echo ""
while true
do
buscar=":"
largo=`expr index $txf $buscar`
echo "Valor actual del TXFrequency: \33[1;33m${txf#*=}\33[1;37m"

           	          read -p 'Introduce TXFrequency:        ' frecuenciatx
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $txf 1 2`
                          else
                          linea=`expr substr $txf 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini

            #DMR+
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #Radio
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #libre
            sed -i "13c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "13c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "13c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos

#TXFrequency YSF
loc1=`grep -n "^TXFrequency=" /home/pi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
sed -i "$numero_linea_letrac TXFrequency=$frecuenciatx" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
            
            #YSF2DMR
            sed -i "3c TXFrequency=$frecuenciatx" /home/pi/YSF2DMR/YSF2DMR.ini      
            sed -i "3c TXFrequency=$frecuenciatx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_01            
            sed -i "3c TXFrequency=$frecuenciatx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_02
            sed -i "3c TXFrequency=$frecuenciatx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_03
            sed -i "3c TXFrequency=$frecuenciatx" /home/pi/YSF2DMR/YSF2DMR.ini_copia_04
            
            #MMDVMDMR2YSF.ini
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            #MMDVMDMR2NXDN.ini
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini

            #SOLODSTAR
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMDSTAR.ini   
            #SOLOFUSION
            sed -i "14c TXFrequency=$frecuenciatx" /home/pi/MMDVMHost/MMDVMFUSION.ini

			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
4) echo ""
while true
do
            echo "Valor de la Ciudad: \33[1;33m${loca#*=}\33[1;37m"
           	read -p 'Introduce tu Ciudad ' tu_ciudad                                                                       
            actualizar=S 
            case $actualizar in
			      [sS]* ) echo ""
            sed -i "$numero_linea_letrac Location=$tu_ciudad" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini
            #DMR+
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #RADIO
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #LIBRE
            sed -i "18c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "18c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "18c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos

#Name YSF
loc=`grep -n "^Name=" /home/pi/YSFClients/YSFGateway/YSFGateway.ini`
loc1=`echo "$loc" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
sed -i "$numero_linea_letrac Name=$tu_ciudad" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
           
            #YSF2DMR
            sed -i "8c Location=$tu_ciudad" /home/pi/YSF2DMR/YSF2DMR.ini
            sed -i "8c Location=$tu_ciudad" /home/pi/YSF2DMR/YSF2DMR.ini_copia_01
            sed -i "8c Location=$tu_ciudad" /home/pi/YSF2DMR/YSF2DMR.ini_copia_02
            sed -i "8c Location=$tu_ciudad" /home/pi/YSF2DMR/YSF2DMR.ini_copia_03
            sed -i "8c Location=$tu_ciudad" /home/pi/YSF2DMR/YSF2DMR.ini_copia_04
            
            #MMDVMDMR2YSF.ini
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            #MMDVMDMR2NXDN.ini
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini

            #SOLODSTAR
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLOFUSION
            sed -i "19c Location=$tu_ciudad" /home/pi/MMDVMHost/MMDVMFUSION.ini

			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
5) echo ""
while true
do
buscar=":"
largo=`expr index $url $buscar`
echo "Valor de  la  URL   Web: \33[1;33m${url#*=}\33[1;37m"
           	          read -p 'Introduce URL de tu Web: ' tu_url
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $url 1 2`
                          else
                          linea=`expr substr $url 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			        [sS]* ) echo ""
			        tu_url=`echo "$tu_url" | tr -d '[[:space:]]'` #anula los espacios
            sed -i "$linea URL=$tu_url" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini
            #DMR+
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #RADIO
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #LIBRE
            sed -i "20c URL=$tu_url" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "20c URL=$tu_url" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "20c URL=$tu_url" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #YSF2DMR
            sed -i "10c URL=$tu_url" /home/pi/YSF2DMR/YSF2DMR.ini
            sed -i "10c URL=$tu_url" /home/pi/YSF2DMR/YSF2DMR.ini_copia_01
            sed -i "10c URL=$tu_url" /home/pi/YSF2DMR/YSF2DMR.ini_copia_02
            sed -i "10c URL=$tu_url" /home/pi/YSF2DMR/YSF2DMR.ini_copia_03
            sed -i "10c URL=$tu_url" /home/pi/YSF2DMR/YSF2DMR.ini_copia_04
            #MMDVMDMR2YSF.ini
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            #MMDVMDMR2NXDN.ini
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini

            #SOLODSTAR
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLOFUSION
            sed -i "21c URL=$tu_url" /home/pi/MMDVMHost/MMDVMFUSION.ini
            
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
6) echo ""
while true
do
buscar=":"
largo=`expr index $idd $buscar`
echo "Valor  actual  del Id: \33[1;33m${idd#*=}\33[1;37m"
           	          read -p 'Introduce un ID válido ' tu_id
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $idd 1 1`
                          else
                          linea=`expr substr $idd 1 1`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          sed -i "$linea Id=$tu_id" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini
            #DMR+
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #RADIO
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #LIBRE
            sed -i "54c Id=$tu_id" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "54c Id=$tu_id" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "54c Id=$tu_id" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos

#Id YSF
loc1=`grep -n "^Id=" /home/pi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
sed -i "$numero_linea_letrac Id=$tu_id" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
            
            #YSF2DMR
            var1=`grep -n -m 1 "\[DMR Network\]" /home/pi/YSF2DMR/YSF2DMR.ini`
            var2=`echo "$var1" | tr -d '[[:space:]]'`
            buscar=":"
            largo_linea=`expr index $var2 $buscar`
            largo_linea=`expr $largo_linea - 1`
            numero_linea=`expr substr $var2 1 $largo_linea`
            numero_linea=`expr $numero_linea + 1`
            Idds=$(awk "NR==$numero_linea" /home/pi/YSF2DMR/YSF2DMR.ini)
            letra=c
            linea_sed_id=$numero_linea$letra           
            sed -i "$linea_sed_id Id=$tu_id" /home/pi/YSF2DMR/YSF2DMR.ini
            sed -i "$linea_sed_id Id=$tu_id" /home/pi/YSF2DMR/YSF2DMR.ini_copia_01
            sed -i "$linea_sed_id Id=$tu_id" /home/pi/YSF2DMR/YSF2DMR.ini_copia_02
            sed -i "$linea_sed_id Id=$tu_id" /home/pi/YSF2DMR/YSF2DMR.ini_copia_03
            sed -i "$linea_sed_id Id=$tu_id" /home/pi/YSF2DMR/YSF2DMR.ini_copia_04
            
            #MMDVMDMR2YSF
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            #MMDVMDMR2NXDN.ini
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini

            #SOLODSTAR
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLOFUSION  
            sed -i "3c Id=$tu_id" /home/pi/MMDVMHost/MMDVMFUSION.ini           
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
7) echo ""
while true
do
                      read -p 'Introduce el valor de la Baliza (Ej. 1-activada 0-desactivada) : ' baliza
                      actualizar=S 
                      case $actualizar in
                      [sS]* ) echo ""
                      sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini

            #DMR+
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #RADIO
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #LIBRE
            sed -i "30c Enable=$baliza" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "30c Enable=$baliza" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "30c Enable=$baliza" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
            #MMDVMDMR2YSF
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            #MMDVMDMR2NXDN.ini
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini

            #SOLODSTAR
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLOFUSION
            sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/MMDVMFUSION.ini                      
                      break;;
                      [nN]* ) echo ""
                      break;;
esac
done;;
8) echo ""
while true
do
modehang=`grep -n -m 1 -c '\<RFModeHang\>' /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
if [ $modehang = 0 ]; then
echo "no existe este comando"
else
modehang=`grep -n -m 1 '\<RFModeHang\>' /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
modehang1=`expr substr $modehang 5 30`
fi
buscar=":"
largo=`expr index $modehang $buscar`
echo "Valor actual del RFModeHang = : \33[1;33m${modehang1#*=}\33[1;37m"
                      read -p 'Introcuce el valor para RFModeHang (optimo=3): ' rfmodehang
                          letra=c
                          if [ $largo = 2 ]
                          then
                          linea=`expr substr $modehang 1 1`
                          else
                          linea=`expr substr $modehang 1 2`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in                                            
                    [sS]* ) echo ""
                    V=`echo "$V" | tr -d '[[:space:]]'`       
                          sed -i "$linea RFModeHang=$rfmodehang" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini 
            #DMR+
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #RADIO
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVM.ini_copia3    

            #MMDVMDMR2YSF
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini 

            #MMDVMDMR2NXDN.ini
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini

            #SOLODSTAR
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLOFUSION 
            sed -i "7c RFModeHang=$rfmodehang" /home/pi/MMDVMHost/MMDVMFUSION.ini                         
        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
9) echo ""
while true
do
timeo=`grep -n -m 1 -c '\<Timeout\>' /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
if [ $timeo = 0 ]; then
echo "no existe este comando"
else
timeo=`grep -n -m 1 '\<Timeout\>' /home/pi/MMDVMHost/TODOS_LOS_INIS.ini`
timeo1=`expr substr $timeo 5 30`
fi
buscar=":"
largo=`expr index $timeo $buscar`
echo "Valor actual del Timeout = : \33[1;33m${timeo1#*=}\33[1;37m"
                      read -p 'Introcuce el valor para Timeout (valor optimo de 0 a 180): ' timeou
                          letra=c
                          if [ $largo = 2 ]
                          then
                          linea=`expr substr $timeo 1 1`
                          else
                          linea=`expr substr $timeo 1 2`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in                                            
                    [sS]* ) echo ""
                    V=`echo "$V" | tr -d '[[:space:]]'`       
                          sed -i "$linea Timeout=$timeou" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini 
            #DMR+
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #RADIO
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #LIBRE
            sed -i "3c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "3c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "3c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos

            #MMDVMDMR2YSF
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            #MMDVMDMR2NXDN.ini
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini

            #SOLODSTAR
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLOFUSION
            sed -i "4c Timeout=$timeou" /home/pi/MMDVMHost/MMDVMFUSION.ini

        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
10) echo ""
while true
do
buscar=":"
largo=`expr index $dup $buscar`
echo "Valor actual del Duplex: \33[1;33m${dup#*=}\33[1;37m"
           	          read -p 'Para un repetidor Duplex=1 Para un DVMEGA Duplex=0: ' duplex
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $dup 1 1`
                          else
                          linea=`expr substr $dup 1 1`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea Duplex=$duplex" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini
            #DMR+
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #RADIO
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVM.ini_copia3           
            #LIBRE
            sed -i "4c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "4c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "4c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos

            #MMDVMDMR2YSF
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            #MMDVMDMR2NXDN.ini
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini

            #SOLODSTAR
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLOFUSION 
            sed -i "5c Duplex=$duplex" /home/pi/MMDVMHost/MMDVMFUSION.ini            
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
11) echo ""
while true
do
buscar=":"
largo=`expr index $lat $buscar`
echo "Valor de la Latitud: \33[1;33m${lat#*=}\33[1;37m"
           	          read -p 'Introduce la Latitud ' tu_latitud
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $lat 1 2`
                          else
                          linea=`expr substr $lat 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea Latitude=$tu_latitud" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini
            #DMR+
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #RADIO
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #LIBRE
            sed -i "15c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "15c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "15c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos

#Latitude YSF
loc1=`grep -n "^Latitude=" /home/pi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
sed -i "$numero_linea_letrac Latitude=$tu_latitud" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
            
            #YSF2DMR
            sed -i "5c Latitude=$tu_latitud" /home/pi/YSF2DMR/YSF2DMR.ini
            sed -i "5c Latitude=$tu_latitud" /home/pi/YSF2DMR/YSF2DMR.ini_copia_01
            sed -i "5c Latitude=$tu_latitud" /home/pi/YSF2DMR/YSF2DMR.ini_copia_02
            sed -i "5c Latitude=$tu_latitud" /home/pi/YSF2DMR/YSF2DMR.ini_copia_03
            sed -i "5c Latitude=$tu_latitud" /home/pi/YSF2DMR/YSF2DMR.ini_copia_04
            #MMDVMDMR2YSF
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            #MMDVMDMR2NXDN.ini
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini

            #SOLODSTAR
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLOFUSION
            sed -i "16c Latitude=$tu_latitud" /home/pi/MMDVMHost/MMDVMFUSION.ini

			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
12) echo ""
while true
do
buscar=":"
largo=`expr index $long $buscar`
echo "Valor de la Longitud: \33[1;33m${long#*=}\33[1;37m"
           	          read -p 'Introduce la Longitud ' tu_longitud
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $long 1 2`
                          else
                          linea=`expr substr $long 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea Longitude=$tu_longitud" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini

            #DMR+
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #RADIO
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVM.ini_copia3
            #LIBRE
            sed -i "16c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "16c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "16c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos

#Longitude YSF
loc1=`grep -n "^Longitude=" /home/pi/YSFClients/YSFGateway/YSFGateway.ini`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
sed -i "$numero_linea_letrac Longitude=$tu_longitud" /home/pi/YSFClients/YSFGateway/YSFGateway.ini
            
            #YSF2DMR
            sed -i "6c Longitude=$tu_longitud" /home/pi/YSF2DMR/YSF2DMR.ini
            sed -i "6c Longitude=$tu_longitud" /home/pi/YSF2DMR/YSF2DMR.ini_copia_01
            sed -i "6c Longitude=$tu_longitud" /home/pi/YSF2DMR/YSF2DMR.ini_copia_02
            sed -i "6c Longitude=$tu_longitud" /home/pi/YSF2DMR/YSF2DMR.ini_copia_03
            sed -i "6c Longitude=$tu_longitud" /home/pi/YSF2DMR/YSF2DMR.ini_copia_04 

            #MMDVMDMR2YSF         
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            #MMDVMDMR2NXDN.ini
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini         

            #SOLODSTAR
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLOFUSION 
            sed -i "17c Longitude=$tu_longitud" /home/pi/MMDVMHost/MMDVMFUSION.ini




			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
13) echo ""
while true
do
                          echo "Valor  actual  del  Module: $MODULE"
                          read -p 'Valor óptimo para D-STAR=B: '  module
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          #Convierte de minúsculas a Mayúsculas
                          module=`echo "$module" | tr [:lower:] [:upper:]`
                          sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/TODOS_LOS_INIS.ini
            #DMR+
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMPLUS.ini
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia2
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMPLUS.ini_copia3
            #BM
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMBM.ini
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMBM.ini_copia
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMBM.ini_copia2
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMBM.ini_copia3
            #RADIO
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVM.ini
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVM.ini_copia
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVM.ini_copia2
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVM.ini_copia3
           
            sed -i "48c Module=$module" /home/pi/MMDVMHost/MMDVMLIBRE.ini
            sed -i "48c Module=$module" /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
            sed -i "48c Module=$module" /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos

            #MMDVMDMR2YSF
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini

            
            #MMDVMDMR2NXDN.ini
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini 
            
            #SOLODSTAR
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMDSTAR.ini
            #SOLOFUSION  
            sed -i "$linea_sed_MODULE Module=$module" /home/pi/MMDVMHost/MMDVMFUSION.ini                        
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


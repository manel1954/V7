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
echo "   *           xxScript para Modificar MMDVMLIBRE.ini        \33[1;31m by EA3EIZ\33[1;32m       *"
echo "   **************************************************************************"
echo -n "\33[1;36m   1)\33[0m Modificar indicativo  - \33[1;33m"
ind=`grep -n "Callsign" /home/pi/MMDVMHost/MMDVMLIBRE.ini`
ind1=`expr substr $ind 3 30`
echo "$ind1"

echo -n "\33[1;36m   2)\33[0m Modificar RXFrequency - \33[1;33m"
rxf=`grep -n "RXFrequency" /home/pi/MMDVMHost/MMDVMLIBRE.ini`
rxf1=`expr substr $rxf 4 30`
echo "$rxf1"

echo -n "\33[1;36m   3)\33[0m Modificar TXFrequency - \33[1;33m"
txf=`grep -n "TXFrequency" /home/pi/MMDVMHost/MMDVMLIBRE.ini`
txf1=`expr substr $txf 4 30`
echo "$txf1"

echo -n "\33[1;36m   4)\33[0m Modificar Location    - \33[1;33m"
loca=`grep -n "Locatio" /home/pi/MMDVMHost/MMDVMLIBRE.ini`
loca1=`expr substr $loca 4 30`
echo "$loca1"

echo -n "\33[1;36m   5)\33[0m Modificar URL         - \33[1;33m"
url=`grep -n "URL" /home/pi/MMDVMHost/MMDVMLIBRE.ini`
url1=`expr substr $url 4 30`
echo "$url1"

echo "\33[1;36m   6)\33[0m Puerto para DVMEGA pinchado en Raspberri PI (ttyAMA0)\33[1;33m"
echo "\33[1;36m   7)\33[0m Puerto para placa NTH/ZUM en arduino y Pincho Low Cost (ttyACM0)\33[1;33m"
echo "\33[1;36m   8)\33[0m Puerto para placa NTH/ZUM en arduino y Pincho Low Cost (ttyACM1)\33[1;33m"
echo "\33[1;36m   9)\33[0m Puerto para DVMEGA + Bluestack conectado por USB a Raspberry Pi(ttyUSB0)\33[1;33m"
echo -n "                            - "

mode=`grep -n -m 1 '\<Modem\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
mode1=`expr substr $mode 4 30`
linea=`expr substr $mode 1 2`
linea=`expr $linea + 2`
linea33=$linea
letra=p
linea2=$linea$letra
var99= sed -n $linea2  /home/pi/MMDVMHost/MMDVMLIBRE.ini;

echo -n "\33[1;36m  10)\33[0m Modificar ID          - \33[1;33m"
idd=`grep -n "Id=" /home/pi/MMDVMHost/MMDVMLIBRE.ini`
idd1=`expr substr $idd 4 30`
echo "$idd1"

echo -n "\33[1;36m  11)\33[0m Modificar Address     - \33[1;33m"
master=`grep -n -m 1 '\<Address\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
master1=`expr substr $master $largo 40`
largo=`expr substr $master 1 $largo1`
letra=c            
linea=$largo$letra
echo "$master1"

echo -n "\33[1;36m  12)\33[0m Modificar Puerto      - \33[1;33m"
lineaport=`expr substr $master 1 $largo1`
lineaport=`expr $lineaport + 1`
linea3port=$lineaport
letra=p
linea2port=$lineaport$letra
var100port= sed -n $linea2port  /home/pi/MMDVMHost/MMDVMLIBRE.ini;

echo -n "\33[1;36m  13)\33[0m Modificar Password    - \33[1;33m"
pas=`grep -n '\<Password\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
pas1=`expr substr $pas 4 30`
echo "$pas1"

echo -n "\33[1;36m  14)\33[0m Modificar TXInvert    - \33[1;33m"
txinv=`grep -n '\<TXInvert\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
txinv1=`expr substr $txinv 4 30`
echo "$txinv1"

echo -n "\33[1;36m  15)\33[0m Modificar RXLevel     - \33[1;33m"
rx=`grep -n '\<RXLevel\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
rx1=`expr substr $rx 4 30`
echo "$rx1"

echo -n "\33[1;36m  16)\33[0m Modificar TXLevel     - \33[1;33m"
tx=`grep -n -m 1 '\<TXLevel\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
tx1=`expr substr $tx 4 30`
echo "$tx1"

echo -n "\33[1;36m  17)\33[0m Modificar Duplex      - \33[1;33m"
dup=`grep -n -m 1 '\<Duplex\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
dup1=`expr substr $dup 3 30`
echo "$dup1"

echo -n "\33[1;36m  18)\33[0m Modificar Tramas      - \33[1;33m"
lg=`grep -n -m 1 '\<DisplayLevel\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
lg1=`expr substr $lg 4 30`
echo "$lg1"

echo -n "\33[1;36m  19)\33[0m Modificar Slot1       - \33[1;33m"
sl=`grep -n -m 1 '\<Slot1\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
sl1=`expr substr $sl 4 30`
echo "$sl1"

echo -n "\33[1;36m  20)\33[0m Modificar OscOffset   - \33[1;33m"
salto=`grep -n -m 1 -c '\<OscOffset\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
if [ $salto = 0 ]; then
echo "\33[1;31mEsta versión MMDVMHost no trae este parámetro"
else
salto=`grep -n -m 1 '\<OscOffset\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
salto1=`expr substr $salto 4 30`
echo "$salto1"
fi

echo -n "\33[1;36m  21)\33[0m Modulo D-STAR         - \33[1;33m"
modu=`grep -n -m 1 '\<Module\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
modu1=`expr substr $modu 4 30`
echo "$modu1"

echo -n "\33[1;36m  22)\33[0m Desactivar DMR        - \33[1;33m"
linea=`expr substr $idd 1 2`
linea=`expr $linea - 2`
linea3=$linea
letra=p
linea2=$linea$letra
var200= sed -n $linea2  /home/pi/MMDVMHost/MMDVMLIBRE.ini;

echo -n "\33[1;36m  23)\33[0m Coordenada Latitud    - \33[1;33m"
lat=`grep -n "Latitude" /home/pi/MMDVMHost/MMDVMLIBRE.ini`
lat1=`expr substr $lat 4 30`
echo "$lat1"

echo -n "\33[1;36m  24)\33[0m Coordenada Longitud   - \33[1;33m"
long=`grep -n "Longitude" /home/pi/MMDVMHost/MMDVMLIBRE.ini`
long1=`expr substr $long 4 30`
echo "$long1"

echo -n "\33[1;36m  25)\33[0m Modificar RXInvert    - \33[1;33m"
rxinv=`grep -n '\<RXInvert\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
rxinv1=`expr substr $rxinv 4 30`
echo "$rxinv1"

echo ""
echo "\33[1;36m  26)\33[1;33m Abrir fichero MMDVMLIBRE.ini para hacer cualquier cambio\33[1;33m"
echo ""
echo "\33[1;36m  27)\33[1;37m Guardar  fichero de Configuración en M1 \33[1;36m"
echo -n "\33[1;36m  28)\33[1;32m Utilizar fichero de Configuración de M1: \33[1;36m"
reflector=`grep -n -m 1 '\<Address\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno`
reflector=`expr substr $reflector 12 40`
echo "$reflector"

echo "\33[1;36m  29)\33[1;37m Guardar  fichero de Configuración en M2: \33[1;36m"
echo -n "\33[1;36m  30)\33[1;32m Utilizar fichero de Configuración en M2: \33[1;36m"
reflector2=`grep -n -m 1 '\<Address\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos`
reflector2=`expr substr $reflector2 12 40`
echo "$reflector2"

echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
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
           	          read -p 'Introduce tu indicativo: ' indicativo
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
			              indicativo=`echo "$indicativo" | tr -d '[[:space:]]'`
                          sed -i "$linea Callsign=$indicativo" /home/pi/MMDVMHost/MMDVMLIBRE.ini
                          sed -i "40c $indicativo" /home/pi/info_panel_control.ini #escribe solo el indicativ
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

           	          read -p 'Introduce RXFrequency:        ' var2
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
                              sed -i "$linea RXFrequency=$var2" /home/pi/MMDVMHost/MMDVMLIBRE.ini
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

           	          read -p 'Introduce TXFrequency:        ' var2
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
                          sed -i "$linea TXFrequency=$var2" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
4) echo ""
while true
do
buscar=":"
largo=`expr index $loca $buscar`
echo "Valor de la Ciudad: \33[1;33m${loca#*=}\33[1;37m"
           	          read -p 'Introduce tu Ciudad ' loc1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $loca 1 2`
                          else
                          linea=`expr substr $loca 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
			  loc1=`echo "$loc1" | tr -d '[[:space:]]'`
              sed -i "$linea Location=$loc1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
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
           	          read -p 'Introduce URL de tu Web: ' ur1
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
			  ur1=`echo "$ur1" | tr -d '[[:space:]]'`
                          sed -i "$linea URL=$ur1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
6) echo ""
while true
do
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          letra1=c
                          linea4=$linea33$letra1
                          sed -i "$linea4 Port=/dev/ttyAMA0" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
7) echo ""
while true
do
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          letra1=c
                          linea4=$linea33$letra1
                          sed -i "$linea4 Port=/dev/ttyACM0" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
8) echo ""
while true
do
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          letra1=c
                          linea4=$linea33$letra1
                          sed -i "$linea4 Port=/dev/ttyACM1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
9) echo ""
while true
do
                     
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          letra1=c
                          linea4=$linea33$letra1
                          sed -i "$linea4 Port=/dev/ttyUSB0" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;

10) echo ""
while true
do
buscar=":"
largo=`expr index $idd $buscar`
echo "Valor  actual  del Id: \33[1;33m${idd#*=}\33[1;37m"
           	          read -p 'Introduce un ID válido ' miid
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $idd 1 2`
                          else
                          linea=`expr substr $idd 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea Id=$miid" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
11) echo ""
while true
do
echo "Valor actual del Master: \33[1;33m${master#*=}\33[1;37m"
           	          read -p 'Brandmeister=master.spain-dmr.es / DMR+=212.237.3.141: ' master1
                          actualizar=S 
                          case $actualizar in
			              [sS]* ) echo ""
			              master1=`echo "$master1" | tr -d '[[:space:]]'`
                    letra=c            
linea=$largo$letra
                          sed -i "$linea Address=$master1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
12) echo ""
while true
do
                          echo -n "Valor actual del \33[1;37m${var100port#*=}\33[1;37m"
                          var100port= sed -n $linea2port  /home/pi/MMDVMHost/MMDVMLIBRE.ini;
           	          read -p 'Puerto para Brandmeister=62031 puerto para DMR+=55555 : ' miid
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          letra1=c
                          linea4=$linea3port$letra1
                          sed -i "$linea4 Port=$miid" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
13) echo ""
while true
do
buscar=":"
largo=`expr index $pas $buscar`
echo "   Valor actual del Password: \33[1;33m${pas#*=}\33[1;37m"
           	          read -p '   Introduce el password que corresponda: ' pas1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $pas 1 2`
                          else
                          linea=`expr substr $pas 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			              [sS]* ) echo ""
			              pas1=`echo "$pas1" | tr -d '[[:space:]]'`
                          sed -i "$linea Password=$pas1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
14) echo ""
while true
do
buscar=":"
largo=`expr index $txinv $buscar`
echo "Valor  actual del  TXInvert: \33[1;33m${txinv#*=}\33[1;37m"
           	          read -p 'Valor óptimo para DVMEGA=1 : ' txinv1
                          letra=c
                         if [ $largo = 3 ]
                          then
                          linea=`expr substr $txinv 1 2`
                          else
                          linea=`expr substr $txinv 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea TXInvert=$txinv1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
15) echo ""
while true
do
buscar=":"
largo=`expr index $rx $buscar`
echo "Valor  actual  del  RXLevel : \33[1;33m${rx#*=}\33[1;37m"
           	          read -p 'Valor óptimo para DVMEGA=45 : ' var2
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $rx 1 2`
                          else
                          linea=`expr substr $rx 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea RXLevel=$var2" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
16) echo ""
while true
do
buscar=":"
largo=`expr index $tx $buscar`
echo "Valor  actual  del  TXLevel : \33[1;33m${tx#*=}\33[1;37m"
           	          read -p 'Valor óptimo para DVMEGA=50 : ' var2
                          letra=c
                          if [ $largo = 3 ]3
                          then
                          linea=`expr substr $tx 1 2`
                          else
                          linea=`expr substr $tx 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea TXLevel=$var2" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
17) echo ""
while true
do
buscar=":"
largo=`expr index $dup $buscar`
echo "Valor actual del Duplex: \33[1;33m${dup#*=}\33[1;37m"
           	          read -p 'Para un repetidor Duplex=1 Para un DVMEGA Duplex=0: ' dup1
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
                          sed -i "$linea Duplex=$dup1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;

18) echo ""
while true
do
buscar=":"
largo=`expr index $lg $buscar`
echo "Valor actual del DisplayLevel: \33[1;33m${lg#*=}\33[1;37m"
           	     read -p 'Para visualizar tramas seguidas introduce 1, para una sola trama introduce 2:' lg1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $lg 1 2`
                          else
                          linea=`expr substr $lg 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea DisplayLevel=$lg1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
19) echo ""
while true
do

sl=`grep -n -m 1 -c '\<Slot1\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
if [ $sl = 0 ]; then
echo "no existe este comando"
else
sl=`grep -n -m 1 '\<Slot1\>' /home/pi/MMDVMHost/MMDVMLIBRE.ini`
sl1=`expr substr $sl 5 30`
echo "$sl1"
fi



buscar=":"
largo=`expr index $sl $buscar`
echo "Valor actual del Slot1=: \33[1;33m${sl#*=}\33[1;37m"
           	          read -p 'Para DVMEGA Modificar el valor del Slot1=0: ' V
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $sl 1 2`
                          else
                          linea=`expr substr $sl 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in                                            
			              [sS]* ) echo ""
			              V=`echo "$V" | tr -d '[[:space:]]'`			  
                          sed -i "$linea Slot1=$V" /home/pi/MMDVMHost/MMDVMLIBRE.ini
              
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
20) echo ""
while true
do
buscar=":"
largo=`expr index $salto $buscar`
echo "Valor  actual  del  scOffset : \33[1;33m${salto#*=}\33[1;37m"
           	          read -p 'Valor óptimo para placa NTH=0 para mi DVMEGA=-50 : ' of1
                          letra=c
                         if [ $largo = 3 ]
                          then
                          linea=`expr substr $salto 1 2`
                          else
                          linea=`expr substr $salto 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea OscOffset=$of1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
21) echo ""
while true
do
buscar=":"
largo=`expr index $modu $buscar`
echo "Valor  actual  del  Module: \33[1;33m${modu#*=}\33[1;37m"
           	          read -p 'Valor óptimo para D-STAR=B: '  modu1
                          letra=c
                         if [ $largo = 3 ]
                          then
                          linea=`expr substr $modu 1 2`
                          else
                          linea=`expr substr $modu 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			  [sS]* ) echo ""
                          sed -i "$linea Module=$modu1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
22) echo ""
while true
do
echo -n "Valor  actual  del \33[1;33m${var200#*=}\33[1;37m"
                          var100= sed -n $linea2  /home/pi/MMDVMHost/MMDVMLIBRE.ini;
           	              read -p 'Desactivado=0 Activado=1: '   dmrac1
                          actualizar=S 
                          case $actualizar in
			              [sS]* ) echo ""
                          letra1=c
                          linea4=$linea3$letra1
                          sed -i "$linea4 Enable=$dmrac1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			              break;;
			              [nN]* ) echo ""
			              break;;
esac
done;;


23) echo ""
while true
do
buscar=":"
largo=`expr index $lat $buscar`
echo "Valor de la Latitud: \33[1;33m${lat#*=}\33[1;37m"
           	          read -p 'Introduce la Latitud ' lat1
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
                          sed -i "$linea Latitude=$lat1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;

24) echo ""
while true
do
buscar=":"
largo=`expr index $long $buscar`
echo "Valor de la Longitud: \33[1;33m${long#*=}\33[1;37m"
           	          read -p 'Introduce la Longitud ' long1
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
                          sed -i "$linea Longitude=$long1" /home/pi/MMDVMHost/MMDVMLIBRE.ini
			  break;;
			  [nN]* ) echo ""
			  break;;
esac
done;;
25) echo ""
while true
do
buscar=":"
largo=`expr index $rxinv $buscar`
echo "Valor  actual del  RXInvert: \33[1;33m${rxinv#*=}\33[1;37m"
                      read -p 'Valor óptimo para Motorola=0 para otras=1 : ' rxinv11
                          letra=c
                         if [ $largo = 3 ]
                          then
                          linea=`expr substr $rxinv 1 2`
                          else
                          linea=`expr substr $rxinv 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
        [sS]* ) echo ""
                          sed -i "$linea RXInvert=$rxinv11" /home/pi/MMDVMHost/MMDVMLIBRE.ini
        break;;
        [nN]* ) echo ""
        break;;
esac
done;;
26) echo ""
while true
do
                              actualizar=S 
                              case $actualizar in
			                        [sS]* ) echo ""
                              geany /home/pi/MMDVMHost/MMDVMLIBRE.ini
			                        break;;
			                        [nN]* ) echo ""
			                        break;;
esac
done;;
27) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Haciendo copia de seguridad de la M1>>>>>"
                        sleep 3
                        sudo cp -f /home/pi/MMDVMHost/MMDVMLIBRE.ini /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
28) echo ""
while true
do
                    
                        actualizar=S 
                        case $actualizar in      
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M1 >>>>>"
                        sleep 3
                        sudo cp -f /home/pi/MMDVMHost/MMDVMLIBRE.ini_uno /home/pi/MMDVMHost/MMDVMLIBRE.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
29) echo ""
while true
do
                    
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Haciendo copia de seguridad de la M2 >>>>>"
                        sleep 3
                        sudo cp -f /home/pi/MMDVMHost/MMDVMLIBRE.ini /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
30) echo ""
while true
do
                    
                        actualizar=S 
                        case $actualizar in
                        [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M2 >>>>>"
                        sleep 3
                        sudo cp -f /home/pi/MMDVMHost/MMDVMLIBRE.ini_dos /home/pi/MMDVMHost/MMDVMLIBRE.ini
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


#!/bin/bash
while true
do
clear
#Variables para utilizar los editores MMDVM, BM, PLUS depende del que queramos
DIRECTORIO="MMDVMBM.ini"
DIRECTORIO_copia="MMDVMBM.ini_copia"
DIRECTORIO_copia2="MMDVMBM.ini_copia2"
DIRECTORIO_copia3="MMDVMBM.ini_copia3"

#Escribe datos en el fichero /home/pi/info_panel_control.ini para leer desde el panel de control
primero="1c"
segundo="2c"
tercero="3c"
cuarto="4c"

# Recoge datos para leer desde el panel de control
indi=$(awk "NR==2" /home/pi/MMDVMHost/$DIRECTORIO)
sed -i "$primero $indi" /home/pi/info_panel_control.ini
ide=$(awk "NR==3" /home/pi/MMDVMHost/$DIRECTORIO)
sed -i "$segundo $ide" /home/pi/info_panel_control.ini
frec=$(awk "NR==13" /home/pi/MMDVMHost/$DIRECTORIO)
sed -i "$tercero $frec" /home/pi/info_panel_control.ini
master=`grep -n -m 1 "^Address=" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
largo=`expr substr $master 1 $largo1`
letra=c            
linea_master=$largo$letra
master=$(awk "NR==$linea_master" /home/pi/MMDVMHost/$DIRECTORIO)
sed -i "$cuarto $master" /home/pi/info_panel_control.ini

#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
echo "${VERDE}"
echo "   **************************************************************************"
echo "   *           Script para Modificar $DIRECTORIO             \33[1;31m by EA3EIZ\33[1;32m   *"
echo "   **************************************************************************"
echo -n "${CIAN}   1)${GRIS} Modificar indicativo  - ${AMARILLO}"
ind=`grep -n "^Callsign=" /home/pi/MMDVMHost/$DIRECTORIO`
indi1=`echo "$ind" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $indi1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $indi1 1 $largo_linea`
letrac=c
numero_linea_indi=$numero_linea$letrac
contenido_indicativo=$(awk "NR==$numero_linea" /home/pi/MMDVMHost/$DIRECTORIO)
echo "$contenido_indicativo"

echo -n "${CIAN}   2)${GRIS} Modificar RXFrequency - ${AMARILLO}"
rxf=`grep -n "^RXFrequency=" /home/pi/MMDVMHost/$DIRECTORIO`
rxf1=`echo "$rxf" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $rxf1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $rxf1 1 $largo_linea`
letrac=c
numero_linea_rxf=$numero_linea$letrac
contenido_rxf=$(awk "NR==$numero_linea" /home/pi/MMDVMHost/$DIRECTORIO)
echo "$contenido_rxf"

echo -n "${CIAN}   3)${GRIS} Modificar TXFrequency - ${AMARILLO}"
txf=`grep -n "^TXFrequency=" /home/pi/MMDVMHost/$DIRECTORIO`
txf1=`echo "$txf" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $txf1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $txf1 1 $largo_linea`
letrac=c
numero_linea_txf=$numero_linea$letrac
contenido_txf=$(awk "NR==$numero_linea" /home/pi/MMDVMHost/$DIRECTORIO)
echo "$contenido_txf"

echo -n "${CIAN}   4)${GRIS} Modificar Location    - ${AMARILLO}"
loc=`grep -n "^Location=" /home/pi/MMDVMHost/$DIRECTORIO`
loc1=`echo "$loc" | tr -d '[[:space:]]'`
buscar=":"
largo_linea=`expr index $loc1 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $loc1 1 $largo_linea`
letrac=c
numero_linea_letrac=$numero_linea$letrac
contenido_location=$(awk "NR==$numero_linea" /home/pi/MMDVMHost/$DIRECTORIO)
echo "$contenido_location"

echo -n "${CIAN}   5)${GRIS} Modificar URL         - ${AMARILLO}"
url=`grep -n "URL" /home/pi/MMDVMHost/$DIRECTORIO`
url1=`expr substr $url 4 30`
echo "$url1"

echo "${CIAN}   6)${GRIS} Puerto para DVMEGA pinchado en Raspberri PI (ttyAMA0)${AMARILLO}"
echo "${CIAN}   7)${GRIS} Puerto para placa NTH/ZUM en arduino y Pincho Low Cost (ttyACM0)${AMARILLO}"
echo "${CIAN}   8)${GRIS} Puerto para placa NTH/ZUM en arduino y Pincho Low Cost (ttyACM1)${AMARILLO}"
echo "${CIAN}   9)${GRIS} Puerto para DVMEGA + Bluestack conectado por USB a Raspberry Pi(ttyUSB0)${AMARILLO}"
echo -n "                            - "

mode=`grep -n -m 1 "^Port=" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/$DIRECTORIO)
echo "$mode"

echo -n "${CIAN}  10)${GRIS} Modificar ID          - ${AMARILLO}"
idd=`grep -n "Id=" /home/pi/MMDVMHost/$DIRECTORIO`
idd1=`expr substr $idd 3 30`
echo "$idd1"

echo -n "${CIAN}  11)${GRIS} Modificar Address     - ${AMARILLO}"
master=`grep -n -m 1 "^Address=" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 1`
largo1=`expr $largo - 2`
master1=`expr substr $master $largo 40`
largo=`expr substr $master 1 $largo1`
letra=c            
linea_master=$largo$letra
echo "$master1"

echo -n "${CIAN}  12)${GRIS} Modificar Puerto      - ${AMARILLO}"
lineaport=`expr substr $master 1 $largo1`
lineaport=`expr $lineaport + 1`
linea3port=$lineaport
letra=p
linea2port=$lineaport$letra
var100port= sed -n $linea2port  /home/pi/MMDVMHost/$DIRECTORIO;

echo -n "${CIAN}  13)${GRIS} Modificar Password    - ${AMARILLO}"
pas=`grep -n '\<Password\>' /home/pi/MMDVMHost/$DIRECTORIO`
pas1=`expr substr $pas 5 30`
echo "$pas1"

echo -n "${CIAN}  14)${GRIS} Modificar TXInvert    - ${AMARILLO}"
txinv=`grep -n '\<TXInvert\>' /home/pi/MMDVMHost/$DIRECTORIO`
txinv1=`expr substr $txinv 4 30`
echo -n "$txinv1"

echo -n "${CIAN}      a)${GRIS} D-STAR      - ${AMARILLO}"
dstar=`grep -n "\[D-Star\]" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
largo_linea=`expr index $dstar $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $dstar 1 $largo_linea`
numero_linea_dstar=`expr $numero_linea + 1`
letra=p
numero_linea_dstar_letrap=$numero_linea_dstar$letra
letrac=c
numero_linea_dstar_letrac=$numero_linea_dstar$letrac
presentar_valo= sed -n $numero_linea_dstar_letrap  /home/pi/MMDVMHost/$DIRECTORIO;

echo -n "${CIAN}  15)${GRIS} Modificar RXLevel     - ${AMARILLO}"
rx=`grep -n '\<RXLevel\>' /home/pi/MMDVMHost/$DIRECTORIO`
rx1=`expr substr $rx 4 30`
echo -n "$rx1"

echo -n "${CIAN}      b)${GRIS} DMR         - ${AMARILLO}"
dmr=`grep -n "\[DMR\]" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
largo_linea=`expr index $dmr $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $dmr 1 $largo_linea`
numero_linea_dmr=`expr $numero_linea + 1`
letra=p
numero_linea_dmr_letrap=$numero_linea_dmr$letra #crea 74p
letrac=c
numero_linea_dmr_letrac=$numero_linea_dmr$letrac #crea 74c
presentar_valor= sed -n $numero_linea_dmr_letrap  /home/pi/MMDVMHost/$DIRECTORIO;

echo -n "${CIAN}  16)${GRIS} Modificar TXLevel     - ${AMARILLO}"
tx=`grep -n -m 1 '\<TXLevel\>' /home/pi/MMDVMHost/$DIRECTORIO`
tx1=`expr substr $tx 4 30`
echo -n "$tx1"

echo -n "${CIAN}      c)${GRIS} FUSION      - ${AMARILLO}"
fusion=`grep -n "LowDeviation" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
largo_linea=`expr index $fusion $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $fusion 1 $largo_linea`
numero_linea_fusion=`expr $numero_linea - 1`
letra=p
numero_linea_fusion_letrap=$numero_linea_fusion$letra
letrac=c
numero_linea_fusion_letrac=$numero_linea_fusion$letrac
presentar_valor= sed -n $numero_linea_fusion_letrap  /home/pi/MMDVMHost/$DIRECTORIO;

echo -n "${CIAN}  17)${GRIS} Modificar Duplex      - ${AMARILLO}"
dup=`grep -n -m 1 '\<Duplex\>' /home/pi/MMDVMHost/$DIRECTORIO`
dup1=`expr substr $dup 3 30`
echo -n "$dup1"

echo -n "${CIAN}        d)${GRIS} P25         - ${AMARILLO}"
p25=`grep -n "\[P25\]" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
largo_linea=`expr index $p25 $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $p25 1 $largo_linea`
numero_linea_p25=`expr $numero_linea + 1`
letra=p
numero_linea_p25_letrap=$numero_linea_p25$letra
letrac=c
numero_linea_p25_letrac=$numero_linea_p25$letrac
presentar_valor= sed -n $numero_linea_p25_letrap  /home/pi/MMDVMHost/$DIRECTORIO;

echo -n "${CIAN}  18)${GRIS} Modificar TXHang      - ${AMARILLO}"
txh=`grep -n -m 1 '\<TXHang\>' /home/pi/MMDVMHost/$DIRECTORIO`
txh1=`expr substr $txh 5 30`
echo -n "$txh1"

echo -n "${CIAN}        e)${GRIS} Baliza      - ${AMARILLO}"
cw= sed -n "31p"  /home/pi/MMDVMHost/$DIRECTORIO;

echo -n "${CIAN}  19)${GRIS} Modificar Tramas      - ${AMARILLO}"
lg=`grep -n -m 1 '\<DisplayLevel\>' /home/pi/MMDVMHost/$DIRECTORIO`
lg1=`expr substr $lg 4 30`
echo -n "$lg1"

echo -n "${CIAN}  f)${GRIS} RFModeHang  - ${AMARILLO}"
modehang=`grep -n -m 1 -c '\<RFModeHang\>' /home/pi/MMDVMHost/$DIRECTORIO`
if [ $modehang = 0 ]; then
echo "\33[1;31mEsta versión MMDVMHost no trae este parámetro"
else
modehang=`grep -n -m 1 '\<RFModeHang\>' /home/pi/MMDVMHost/$DIRECTORIO`
modehang1=`expr substr $modehang 3 30`
echo "$modehang1"
fi

echo -n "${CIAN}  20)${GRIS} Modificar Slot1       - ${AMARILLO}"
sl=`grep -n -m 1 '\<Slot1\>' /home/pi/MMDVMHost/$DIRECTORIO`
sl1=`expr substr $sl 5 30`
echo -n "$sl1"

echo -n "${CIAN}         g)${GRIS} Timeout     - ${AMARILLO}"
timeo=`grep -n -m 1 -c '\<Timeout\>' /home/pi/MMDVMHost/$DIRECTORIO`
if [ $timeo = 0 ]; then
echo "\33[1;31mEsta versión MMDVMHost no trae este parámetro"
else
timeo=`grep -n -m 1 '\<Timeout\>' /home/pi/MMDVMHost/$DIRECTORIO`
timeo1=`expr substr $timeo 3 30`
echo "$timeo1"
fi

echo -n "${CIAN}  21)${GRIS} Tipo Pantalla Display - ${AMARILLO}"
Display=`grep -n -m 1 -c '\<Display\>' /home/pi/MMDVMHost/$DIRECTORIO`
if [ $Display = 0 ]; then
echo "\33[1;31mEsta versión MMDVMHost no trae este parámetro"
else
Display=`grep -n -m 1 '\<Display\>' /home/pi/MMDVMHost/$DIRECTORIO`
Display1=`expr substr $Display 3 30`
echo -n "$Display1"
fi

var=`grep -n -m 1 "\[Nextion\]" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
numero_linea=`expr $numero_linea + 2`
MODEMNEXTION=$(awk "NR==$numero_linea" /home/pi/MMDVMHost/$DIRECTORIO)
letra=c
linea_sed_MN=$numero_linea$letra
echo " ${CIAN}h) ${GRIS}Port Nextion- ${AMARILLO}$MODEMNEXTION"

echo -n "${CIAN}  22)${GRIS} Version Display       - ${AMARILLO}"
ScreenLayout=`grep -n -m 1 -c '\<ScreenLayout\>' /home/pi/MMDVMHost/$DIRECTORIO`
if [ $ScreenLayout = 0 ]; then
echo "\33[1;31mEsta versión MMDVMHost no trae este parámetro"
else
ScreenLayout=`grep -n -m 1 '\<ScreenLayout\>' /home/pi/MMDVMHost/$DIRECTORIO`
ScreenLayout1=`expr substr $ScreenLayout 5 30`
echo -n "$ScreenLayout1"
fi

# i) NXDN Enable=
var=`grep -n -m 1 "\[NXDN\]" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
NXDN=$(awk "NR==$numero_linea" /home/pi/MMDVMHost/$DIRECTORIO)
letra=c
linea_sed_NXDN=$numero_linea$letra
echo "  ${CIAN}i) ${GRIS}NXDN        - ${AMARILLO}$NXDN"

# 23) IdleBrightness=
var=`grep -n -m 1 "^IdleBrightness=" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
IdleBrightness=$(awk "NR==$numero_linea" /home/pi/MMDVMHost/$DIRECTORIO)
IdleBrightness_CORTO=`expr substr $IdleBrightness 3 22`
letra=c
linea_sed_IdleBrightness=$numero_linea$letra
echo -n "  ${CIAN}23) ${GRIS}Brillo Display Nextion- ${AMARILLO}$IdleBrightness_CORTO"

# j) POCSAG Enable=
var=`grep -n -m 1 "\[POCSAG\]" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
largo_linea=`expr index $var $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $var 1 $largo_linea`
numero_linea=`expr $numero_linea + 1`
POCSAG=$(awk "NR==$numero_linea" /home/pi/MMDVMHost/$DIRECTORIO)
letra=c
linea_sed_POCSAG=$numero_linea$letra
echo "${CIAN} j) ${GRIS}POCSAG      - ${AMARILLO}$POCSAG"

# 24) Latitude=
echo -n "${CIAN}  24)${GRIS} Coordenada Latitud    - ${AMARILLO}"
lat=`grep -n "Latitude" /home/pi/MMDVMHost/$DIRECTORIO`
lat1=`expr substr $lat 4 30`
echo "$lat1"

# 25) Longitude=
echo -n "${CIAN}  25)${GRIS} Coordenada Longitud   - ${AMARILLO}"
long=`grep -n "Longitude" /home/pi/MMDVMHost/$DIRECTORIO`
long1=`expr substr $long 4 30`
echo "$long1"

echo -n "${CIAN}  26)${GRIS} Modulo D-STAR         - ${AMARILLO}"
modu=`grep -n -m 1 '\<Module\>' /home/pi/MMDVMHost/$DIRECTORIO`
modu1=`expr substr $modu 4 30`
echo -n "$modu1"

# k) Jitter=
Jitter=`grep -n "Jitter" /home/pi/MMDVMHost/$DIRECTORIO`
buscar=":"
largo_linea=`expr index $Jitter $buscar`
largo_linea=`expr $largo_linea - 1`
numero_linea=`expr substr $Jitter 1 $largo_linea`
Jitter=$(awk "NR==$numero_linea" /home/pi/MMDVMHost/$DIRECTORIO)
letrac=c
numero_linea_jiter_letrac=$numero_linea$letrac
echo "  ${CIAN}      k) ${GRIS}Jitter      - ${AMARILLO}$Jitter"

echo -n "${CIAN}  27)${GRIS} Entra reflector DMR+  - ${AMARILLO}"
OPCION=`expr substr $pas 1 $largo1`
OPCION=`expr $OPCION + 1`
linea33port=$OPCION
letra=p
linea22port=$OPCION$letra
var300port= sed -n $linea22port  /home/pi/MMDVMHost/$DIRECTORIO;

echo ""
echo "${CIAN}  28)${AMARILLO} Abrir fichero $DIRECTORIO para hacer cualquier cambio${AMARILLO}"

echo "${CIAN}  29)\33[1;37m Guardar  fichero de Configuración en M1 ${CIAN}"
echo -n "${CIAN}  30)\33[1;32m Utilizar fichero de Configuración de M1: ${CIAN}"
master=`grep -n -m 1 "^Address=" /home/pi/MMDVMHost/$DIRECTORIO_copia`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 9`
copia1=`expr substr $master $largo 40`
echo -n "$copia1"
memoria1=$(awk "NR==31" /home/pi/info_panel_control.ini)
echo " - $memoria1"

echo "${CIAN}  31)\33[1;37m Guardar  fichero de Configuración en M2: ${CIAN}"
echo -n "${CIAN}  32)\33[1;32m Utilizar fichero de Configuración en M2: ${CIAN}"
master=`grep -n -m 1 "^Address=" /home/pi/MMDVMHost/$DIRECTORIO_copia2`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 9`
copia2=`expr substr $master $largo 40`
echo -n "$copia2"
memoria2=$(awk "NR==32" /home/pi/info_panel_control.ini)
echo " - $memoria2"

echo "${CIAN}  33)\33[1;37m Guardar  fichero de Configuración en M3: ${CIAN}"
echo -n "${CIAN}  34)\33[1;32m Utilizar fichero de Configuración en M3: ${CIAN}"
master=`grep -n -m 1 "^Address=" /home/pi/MMDVMHost/$DIRECTORIO_copia3`
buscar=":"
largo=`expr index $master $buscar`
largo=`expr $largo + 9`
copia3=`expr substr $master $largo 40`
echo -n "$copia3"
memoria3=$(awk "NR==33" /home/pi/info_panel_control.ini)
echo " - $memoria3"

echo ""
echo "${CIAN}  35)\33[1;31m Recuperar el fichero original $DIRECTORIO${AMARILLO}"

echo ""
echo "${CIAN}   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "${CIAN}   Elige una opción: " 
read escoger_menu

case $escoger_menu in
1) echo ""
while true
do
                          echo "Valor actual Indicativo: ${AMARILLO}${ind#*=}\33[1;37m"
           	              read -p 'Introduce tu indicativo: ' indicativo
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          indicativo=`echo "$indicativo" | tr [:lower:] [:upper:]`
			                    indicativo=`echo "$indicativo" | tr -d '[[:space:]]'`
                          sed -i "$numero_linea_indi Callsign=$indicativo" /home/pi/MMDVMHost/$DIRECTORIO
                          sed -i "$primero $contenido_indicativo" /home/pi/info_panel_control.ini
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
2) echo ""
while true
do
                          echo "Valor actual del RXFrequency: ${AMARILLO}${rxf#*=}\33[1;37m"
           	              read -p 'Introduce RXFrequency:        ' rxfre
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          sed -i "$numero_linea_rxf RXFrequency=$rxfre" /home/pi/MMDVMHost/$DIRECTORIO
                          sed -i "$tercero RXFrequency=$rxfre" /home/pi/info_panel_control.ini
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
3) echo ""
while true
do
                          echo "Valor actual del TXFrequency: ${AMARILLO}${rxf#*=}\33[1;37m"
                          read -p 'Introduce TXFrequency:        ' txfre
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$numero_linea_txf TXFrequency=$txfre" /home/pi/MMDVMHost/$DIRECTORIO
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
4) echo ""
while true
do
                          echo "Valor de la Ciudad: ${AMARILLO}${contenido_location#*=}\33[1;37m"
                          read -p 'Introduce tu Ciudad ' loc1
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          sed -i "$numero_linea_letrac Location=$loc1" /home/pi/MMDVMHost/$DIRECTORIO
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
                          echo "Valor de  la  URL   Web: ${AMARILLO}${url#*=}\33[1;37m"
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
                          sed -i "$linea URL=$ur1" /home/pi/MMDVMHost/$DIRECTORIO
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
                          letrac=c
                          numero_linea_port=$numero_linea_port$letrac
                          sed -i "$numero_linea_port Port=/dev/ttyAMA0" /home/pi/MMDVMHost/$DIRECTORIO
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
                          letrac=c
                          numero_linea_port=$numero_linea_port$letrac
                          sed -i "$numero_linea_port Port=/dev/ttyACM0" /home/pi/MMDVMHost/$DIRECTORIO
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
                          letrac=c
                          numero_linea_port=$numero_linea_port$letrac
                          sed -i "$numero_linea_port Port=/dev/ttyACM1" /home/pi/MMDVMHost/$DIRECTORIO
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
                          letrac=c
                          numero_linea_port=$numero_linea_port$letrac
                          sed -i "$numero_linea_port Port=/dev/ttyUSB0" /home/pi/MMDVMHost/$DIRECTORIO
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
                          echo "Valor  actual  del Id: ${AMARILLO}${idd#*=}\33[1;37m"
           	              read -p 'Introduce un ID válido ' miid
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
                          sed -i "$linea Id=$miid" /home/pi/MMDVMHost/$DIRECTORIO
                          sed -i "$segundo Id=$miid" /home/pi/info_panel_control.ini
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
11) echo ""
while true
do
                      echo "Valor actual del Master: ${AMARILLO}${master#*=}\33[1;37m"
                      read -p 'Brandmeister=master.spain-dmr.es / DMR+=212.237.3.141: ' master1
                      actualizar=S 
                      case $actualizar in
                      [sS]* ) echo ""
                      master1=`echo "$master1" | tr -d '[[:space:]]'`
                      master1=`echo "$master1" | tr [:upper:] [:lower:]`
                      sed -i "$linea_master Address=$master1" /home/pi/MMDVMHost/$DIRECTORIO
                      sed -i "$cuarto Address=$master1" /home/pi/info_panel_control.ini
                      break;;
                      [nN]* ) echo ""
                      break;;
esac
done;;
12) echo ""
while true
do
                          echo -n "Valor actual del \33[1;37m${var100port#*=}\33[1;37m"
                          var100port= sed -n $linea2port  /home/pi/MMDVMHost/$DIRECTORIO;
                          read -p 'Puerto para Brandmeister=62031 puerto para DMR+=55555 : ' miid
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          letra1=c
                          linea4=$linea3port$letra1
                          sed -i "$linea4 Port=$miid" /home/pi/MMDVMHost/$DIRECTORIO
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
                          echo "   Valor actual del Password: ${AMARILLO}${pas#*=}\33[1;37m"
           	              read -p 'Brandmeister=passw0rd   DMR+=PASSWORD: ' pas1
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
                          sed -i "$linea Password=$pas1" /home/pi/MMDVMHost/$DIRECTORIO
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
                          echo "Valor  actual del  TXInvert: ${AMARILLO}${txinv#*=}\33[1;37m"
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
                          sed -i "$linea TXInvert=$txinv1" /home/pi/MMDVMHost/$DIRECTORIO
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
                          echo "Valor  actual  del  RXLevel : ${AMARILLO}${rx#*=}\33[1;37m"
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
                          sed -i "$linea RXLevel=$var2" /home/pi/MMDVMHost/$DIRECTORIO
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
                          echo "Valor  actual  del  TXLevel : ${AMARILLO}${tx#*=}\33[1;37m"
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
                          sed -i "$linea TXLevel=$var2" /home/pi/MMDVMHost/$DIRECTORIO
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
                          echo "Valor actual del Duplex: ${AMARILLO}${dup#*=}\33[1;37m"
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
                          sed -i "$linea Duplex=$dup1" /home/pi/MMDVMHost/$DIRECTORIO
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
18) echo ""
while true
do
                          buscar=":"
                          largo=`expr index $txh $buscar`
                          echo "Valor actual del TXHang: ${AMARILLO}${txh#*=}\33[1;37m"
           	              read -p 'Para un repetidor TXHang=4 Para un DVMEGA TXHang=0: ' txh1
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $txh 1 2`
                          else
                          linea=`expr substr $txh 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          sed -i "$linea TXHang=$txh1" /home/pi/MMDVMHost/$DIRECTORIO
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
19) echo ""
while true
do
                          buscar=":"
                          largo=`expr index $lg $buscar`
                          echo "Valor actual del DisplayLevel: ${AMARILLO}${lg#*=}\33[1;37m"
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
                          sed -i "$linea DisplayLevel=$lg1" /home/pi/MMDVMHost/$DIRECTORIO
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
20) echo ""
while true
do
                          sl=`grep -n -m 1 -c '\<Slot1\>' /home/pi/MMDVMHost/$DIRECTORIO`
                          if [ $sl = 0 ]; then
                          echo "no existe este comando"
                          else
                          sl=`grep -n -m 1 '\<Slot1\>' /home/pi/MMDVMHost/$DIRECTORIO`
                          sl1=`expr substr $sl 5 30`
                          echo "$sl1"
                          fi
                          buscar=":"
                          largo=`expr index $sl $buscar`
                          echo "Valor actual del Slot1=: ${AMARILLO}${sl#*=}\33[1;37m"
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
                          sed -i "$linea Slot1=$V" /home/pi/MMDVMHost/$DIRECTORIO             
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
21) echo ""
while true
do
                          Display=`grep -n -m 1 -c '\<Display\>' /home/pi/MMDVMHost/$DIRECTORIO`
                          if [ $Display = 0 ]; then
                          echo "no existe este comando"
                          else
                          Display=`grep -n -m 1 '\<Display\>' /home/pi/MMDVMHost/$DIRECTORIO`
                          Display1=`expr substr $Display 5 30`
                          fi
                          buscar=":"
                          largo=`expr index $Display $buscar`
                          echo "Valor actual del Display=: ${AMARILLO}${Display1#*=}\33[1;37m"
                          read -p 'Introcuce el nombre de tu Dispaly: ' V
                          letra=c
                          if [ $largo = 2 ]
                          then
                          linea=`expr substr $Display 1 1`
                          else
                          linea=`expr substr $Display 1 2`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in                                            
                          [sS]* ) echo ""
                          V=`echo "$V" | tr -d '[[:space:]]'`       
                          sed -i "$linea Display=$V" /home/pi/MMDVMHost/$DIRECTORIO             
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
22) echo ""
while true
do
                          ScreenLayout=`grep -n -m 1 -c '\<ScreenLayout\>' /home/pi/MMDVMHost/$DIRECTORIO`
                          if [ $ScreenLayout = 0 ]; then
                          echo "no existe este comando"
                          else
                          ScreenLayout=`grep -n -m 1 '\<ScreenLayout\>' /home/pi/MMDVMHost/$DIRECTORIO`
                          ScreenLayout1=`expr substr $ScreenLayout 5 30`
                          fi
                          buscar=":"
                          largo=`expr index $ScreenLayout $buscar`
                          echo "Valor actual del ScreenLayout=: ${AMARILLO}${ScreenLayout1#*=}\33[1;37m"
                          read -p 'Este parametro puede ser 0 ó 1: ' V
                          letra=c
                          if [ $largo = 3 ]
                          then
                          linea=`expr substr $ScreenLayout 1 2`
                          else
                          linea=`expr substr $ScreenLayout 1 3`
                          fi
                          linea=$linea$letra
                          actualizar=S 
                          case $actualizar in                                            
                          [sS]* ) echo ""
                          V=`echo "$V" | tr -d '[[:space:]]'`       
                          sed -i "$linea ScreenLayout=$V" /home/pi/MMDVMHost/$DIRECTORIO             
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
23) echo ""
while true
do
                          read -p 'Introduce el brillo IdleBrightness: ' V
                          actualizar=S 
                          case $actualizar in                                            
                          [sS]* ) echo ""
                          V=`echo "$V" | tr -d '[[:space:]]'`      
                          sed -i "$linea_sed_IdleBrightness IdleBrightness=$V" /home/pi/MMDVMHost/$DIRECTORIO             
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
26) echo ""
while true
do
                          buscar=":"
                          largo=`expr index $modu $buscar`
                          echo "Valor  actual  del  Module: ${AMARILLO}${modu#*=}\33[1;37m"
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
                          #Convierte indicativo si se introduce en minúsculas a Mayúsculas
                          modu1=`echo "$modu1" | tr [:lower:] [:upper:]`
                          sed -i "$linea Module=$modu1" /home/pi/MMDVMHost/$DIRECTORIO
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
a) echo ""
while true
do
                          echo -n "Valor actual D-STAR ${AMARILLO}${presentar_valor#*=}\33[1;37m"
                          presenta_valor= sed -n $numero_linea_dstar_letrap  /home/pi/MMDVMHost/$DIRECTORIO;
                          read -p 'Desactivado=0 Activado=1:  '   dmrac1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$numero_linea_dstar_letrac Enable=$dmrac1" /home/pi/MMDVMHost/$DIRECTORIO
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
b) echo ""
while true
do
                          echo -n "Valor  actual  DMR ${AMARILLO}${presentar_valor#*=}\33[1;37m"
                          presenta_valor= sed -n $numero_linea_dmr_letrap  /home/pi/MMDVMHost/$DIRECTORIO;
           	              read -p 'Desactivado=0 Activado=1: '   dmrac1
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          sed -i "$numero_linea_dmr_letrac Enable=$dmrac1" /home/pi/MMDVMHost/$DIRECTORIO
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
c) echo ""
while true
do
                          echo -n "Valor actual FUSION ${AMARILLO}${presentar_valor#*=}\33[1;37m"
                          presenta_valor= sed -n $numero_linea_fusion_letrap  /home/pi/MMDVMHost/$DIRECTORIO;
                          read -p 'Desactivado=0 Activado=1:  '   dmrac1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$numero_linea_fusion_letrac Enable=$dmrac1" /home/pi/MMDVMHost/$DIRECTORIO
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
d) echo ""
while true
do
                          echo -n "Valor  actual  P25 ${AMARILLO}${presentar_valor#*=}\33[1;37m"
                          presenta_valor= sed -n $numero_linea_p25_letrap  /home/pi/MMDVMHost/$DIRECTORIO;
                          read -p 'Desactivado=0 Activado=1: '   dmrac1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$numero_linea_p25_letrac Enable=$dmrac1" /home/pi/MMDVMHost/$DIRECTORIO
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
e) echo ""
while true
do
                          read -p 'Introduce el valor de la Baliza (Ej. 1-activada 0-desactivada) : ' baliza
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "31c Enable=$baliza" /home/pi/MMDVMHost/$DIRECTORIO
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
f) echo ""
while true
do
                          modehang=`grep -n -m 1 -c '\<RFModeHang\>' /home/pi/MMDVMHost/$DIRECTORIO`
                          if [ $modehang = 0 ]; then
                          echo "no existe este comando"
                          else
                          modehang=`grep -n -m 1 '\<RFModeHang\>' /home/pi/MMDVMHost/$DIRECTORIO`
                          modehang1=`expr substr $modehang 5 30`
                          fi
                          buscar=":"
                          largo=`expr index $modehang $buscar`
                          echo "Valor actual del RFModeHang = : ${AMARILLO}${modehang1#*=}\33[1;37m"
                          read -p 'Introcuce el valor para RFModeHang (optimo=3): ' V
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
                          sed -i "$linea RFModeHang=$V" /home/pi/MMDVMHost/$DIRECTORIO             
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
g) echo ""
while true
do
                          timeo=`grep -n -m 1 -c '\<Timeout\>' /home/pi/MMDVMHost/$DIRECTORIO`
                          if [ $timeo = 0 ]; then
                          echo "no existe este comando"
                          else
                          timeo=`grep -n -m 1 '\<Timeout\>' /home/pi/MMDVMHost/$DIRECTORIO`
                          timeo1=`expr substr $timeo 5 30`
                          fi
                          buscar=":"
                          largo=`expr index $timeo $buscar`
                          echo "Valor actual del Timeout = : ${AMARILLO}${timeo1#*=}\33[1;37m"
                          read -p 'Introcuce el valor para Timeout (valor optimo=0): ' V
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
                          sed -i "$linea Timeout=$V" /home/pi/MMDVMHost/$DIRECTORIO             
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
h) echo ""
while true
do
                          echo "Valor del Port: ${AMARILLO}$MODEMNEXTION"
                          read -p 'Ejp. modem, /dev/ttyAMA0, /dev/rfcomm0, /dev/ttyUSB0 :' lat1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_MN Port=$lat1" /home/pi/MMDVMHost/$DIRECTORIO
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
i) echo ""
while true
do
                          echo "Valor actual NXDN: ${AMARILLO}$NXDN"
                          read -p 'Desactivado=0 Activado=1: '   NXDN1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_NXDN Enable=$NXDN1" /home/pi/MMDVMHost/$DIRECTORIO
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
j) echo ""
while true
do
                          echo "Valor actual POCSAG: ${AMARILLO}$POCSAG"
                          read -p 'Desactivado=0 Activado=1: '   POCSAG1
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$linea_sed_POCSAG Enable=$POCSAG1" /home/pi/MMDVMHost/$DIRECTORIO
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
k) echo ""
while true
do                         
                          valor=$(awk "NR==$numero_linea_jiter_letrap" /home/pi/MMDVMHost/$DIRECTORIO)
                          echo "Valor actual  del Jitter: ${AMARILLO}$valor"
                          read -p 'Introduce valor entre 360 a 600: '   JITTER
                          actualizar=S 
                          case $actualizar in
                          [sS]* ) echo ""
                          sed -i "$numero_linea_jiter_letrac Jitter=$JITTER" /home/pi/MMDVMHost/$DIRECTORIO
                          break;;
                          [nN]* ) echo ""
                          break;;
esac
done;;
24) echo ""
while true
do
                          buscar=":"
                          largo=`expr index $lat $buscar`
                          echo "Valor de la Latitud: ${AMARILLO}${lat#*=}\33[1;37m"
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
                          sed -i "$linea Latitude=$lat1" /home/pi/MMDVMHost/$DIRECTORIO
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;

25) echo ""
while true
do
                          buscar=":"
                          largo=`expr index $long $buscar`
                          echo "Valor de la Longitud: ${AMARILLO}${long#*=}\33[1;37m"
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
                          sed -i "$linea Longitude=$long1" /home/pi/MMDVMHost/$DIRECTORIO
			                    break;;
			                    [nN]* ) echo ""
			                    break;;
esac
done;;
27) echo ""
while true
do
                          read -p 'Estas en DMR+ ? S/N ' actualizar             	                           
                          case $actualizar in
			                    [sS]* ) echo ""
			                    read -p 'Intruduce reflector DMR+ al que se conectara (ej:4370) ' opcion
                          letra1=c
                          linea4=$linea33port$letra1
                          sed -i "$linea4 Options=StartRef=$opcion;RelinkTime=10;" /home/pi/MMDVMHost/$DIRECTORIO
			                    break;;
			                    [nN]* ) echo ""
			                    letra1=c
                          linea4=$linea33port$letra1
			                    sed -i "$linea4 #Options=StartRef=4370;RelinkTime=10;" /home/pi/MMDVMHost/$DIRECTORIO
			                    break;;
esac
done;;
28) echo ""
while true
do
                          actualizar=S 
                          case $actualizar in
			                    [sS]* ) echo ""
                          geany /home/pi/MMDVMHost/$DIRECTORIO
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
                        echo "Introduce nombre memoria máximo 10 caracteres"
                        read memoria1
                        echo "<<<<<< Haciendo copia de seguridad de la M1 >>>>>"
                        sleep 3
                        sed -i "31c $memoria1" /home/pi/info_panel_control.ini
                        sudo cp -f /home/pi/MMDVMHost/$DIRECTORIO /home/pi/MMDVMHost/$DIRECTORIO_copia
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
                        echo "<<<<<< Restaurando copia de seguridad de la M1 >>>>>"
                        sleep 3
                        sudo cp -f /home/pi/MMDVMHost/$DIRECTORIO_copia /home/pi/MMDVMHost/$DIRECTORIO
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
31) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "Introduce nombre memoria máximo 10 caracteres"
                        read memoria2
                        echo "<<<<<< Haciendo copia de seguridad de la M2 >>>>>"
                        sleep 3
                        sed -i "32c $memoria2" /home/pi/info_panel_control.ini
                        sudo cp -f /home/pi/MMDVMHost/$DIRECTORIO /home/pi/MMDVMHost/$DIRECTORIO_copia2
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
32) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad  de la M2 >>>>>"
                        sleep 3
                        sudo cp -f /home/pi/MMDVMHost/$DIRECTORIO_copia2 /home/pi/MMDVMHost/$DIRECTORIO
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
33) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "Introduce nombre memoria máximo 10 caracteres"
                        read memoria3
                        echo "<<<<<< Haciendo copia de seguridad de la M3 >>>>>"
                        sleep 3
                        sed -i "33c $memoria3" /home/pi/info_panel_control.ini
                        sudo cp -f /home/pi/MMDVMHost/$DIRECTORIO /home/pi/MMDVMHost/$DIRECTORIO_copia3
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
34) echo ""
while true
do
                        actualizar=S 
                        case $actualizar in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando copia de seguridad de la M3 >>>>>"
                        sleep 3
                        sudo cp -f /home/pi/MMDVMHost/$DIRECTORIO_copia3 /home/pi/MMDVMHost/$DIRECTORIO
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
35) echo ""
while true
do
          	        
           	            read -p 'Quieres restaurar el fichero original $DIRECTORIO? S/N ' restaurar1   
                        case $restaurar1 in
			                  [sS]* ) echo ""
                        clear
                        echo "<<<<<< Restaurando el fichero original $DIRECTORIO >>>>>"
                        sleep 3
                        sudo cp -f /home/pi/MMDVMHost/MMDVM.ini_original /home/pi/MMDVMHost/$DIRECTORIO
			                  break;;
			                  [nN]* ) echo ""
			                  break;;
esac
done;;
0) echo ""
clear
echo "${AMARILLO}   **************************************************"
echo "   *                                                *"
echo "   *     CERRANDO SCRIPT                            *"
echo "   *                                                *"
echo "   **************************************************"
sleep 1
clear
exit;;	
esac
done


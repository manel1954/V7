#!/bin/bash
# script para instalar md380tools
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
echo "   ************************************************************"
echo "   *                                                          *"
echo "   * Script Modificar AUTOARRANQUE     \33[1;33m       \33[1;31m by EA3EIZ     \33[1;32m *"
echo "   *                                                          *"
echo "   ************************************************************"
echo -n "\33[1;36m   101)\33[1;37m  Quitar ircDDB del autoarranque        - \33[1;32m"
dstar=`grep "D-STAR" /home/pi/autoarranque_07.ini`
dstar=`expr substr $dstar 8 3`
if [ $dstar = "ON" ]
then
echo "\33[1;32m$dstar"
else
echo "\33[1;31m"
fi
dstar=`grep "D-STAR" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   102)\33[1;37m  Quitar BlueDV del autoarranque        - \33[1;32m"
bluedv=`grep "BlueDV" /home/pi/autoarranque_07.ini`
bluedv=`expr substr $bluedv 8 3`
if [ $bluedv = "ON" ]
then
echo "\33[1;32m$bluedv"
else
echo "\33[1;31m"
fi
bluedv=`grep "BlueDV" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   103)\33[1;37m  Quitar YSF del autoarranque           - "
C4F=`grep "C4F" /home/pi/autoarranque_07.ini`
C4F=`expr substr $C4F 5 3`
if [ $C4F = "ON" ]
then
echo "\33[1;32m$C4F"
else
echo "\33[1;31m"
fi
C4F=`grep "C4F" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   104)\33[1;37m  Quitar DV4mini del autoarranque       - "
DV4mini=`grep "DV4mini" /home/pi/autoarranque_07.ini`
DV4mini=`expr substr $DV4mini 9 3`
if [ $DV4mini = "ON" ]
then
echo "\33[1;32m$DV4mini"
else
echo "\33[1;31m"
fi
bluedv=`grep "DV4mini" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   105)\33[1;37m  Quitar Radio del autoarranque         - "
MMDVMPLACA=`grep "MMDVMPLACA" /home/pi/autoarranque_07.ini`
MMDVMPLACA=`expr substr $MMDVMPLACA 12 3`
if [ $MMDVMPLACA = "ON" ]
then
echo "\33[1;32m$MMDVMPLACA"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLACA" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   106)\33[1;37m  Quitar DMR+ del autoarranque          - "
MMDVMPLUS=`grep "MMDVMPLUS" /home/pi/autoarranque_07.ini`
MMDVMPLUS=`expr substr $MMDVMPLUS 11 3`
if [ $MMDVMPLUS = "ON" ]
then
echo "\33[1;32m$MMDVMPLUS"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLUS" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   107)\33[1;37m  Quitar LIBRE del autoarranque         - "
MMDVMLIBRE=`grep "MMDVMLIBRE" /home/pi/autoarranque_07.ini`
MMDVMLIBRE=`expr substr $MMDVMLIBRE 12 3`
if [ $MMDVMLIBRE = "ON" ]
then
echo "\33[1;32m$MMDVMLIBRE"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMLIBRE" /home/pi/autoarranque_07.ini`


echo -n "\33[1;36m   108)\33[1;37m  Quitar BM del autoarranque            - "
MMDVMBM=`grep "MMDVMBM" /home/pi/autoarranque_07.ini`
MMDVMBM=`expr substr $MMDVMBM 9 3`
if [ $MMDVMBM = "ON" ]
then
echo "\33[1;32m$MMDVMBM"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMBM" /home/pi/autoarranque_07.ini`



echo -n "\33[1;36m   109)\33[1;37m  Quitar SVXLINK del autoarranque       - "
SVXLINK=`grep "SVXLINK" /home/pi/autoarranque_07.ini`
SVXLINK=`expr substr $SVXLINK 9 3`
if [ $SVXLINK = "ON" ]
then
echo "\33[1;32m$SVXLINK"
else
echo "\33[1;31m"
fi
bluedv=`grep "SVXLINK" /home/pi/autoarranque_07.ini`



#==================================================================================
echo -n "\33[1;36m   110)\33[1;37m  Quitar SOLO_DSTAR del autoarranque    - \33[1;32m"
solod=`grep "SOLO_DSTAR" /home/pi/autoarranque_07.ini`
solod=`expr substr $solod 12 3`
if [ $solod = "ON" ]
then
echo "\33[1;32m$solod"
else
echo "\33[1;31m"
fi
solod=`grep "SOLO_DSTAR" /home/pi/autoarranque_07.ini`
#=================================================================================


#==================================================================================
echo -n "\33[1;36m   111)\33[1;37m  Quitar SOLO_FUSION del autoarranque   - \33[1;32m"
solof=`grep "SOLO_FUSION" /home/pi/autoarranque_07.ini`
solof=`expr substr $solof 13 3`
if [ $solof = "ON" ]
then
echo "\33[1;32m$solof"
else
echo "\33[1;31m"
fi
solof=`grep "SOLO_FUSION" /home/pi/autoarranque_07.ini`
#=================================================================================

#==================================================================================
echo -n "\33[1;36m   112)\33[1;37m  Quitar DVRPTR del autoarranque        - \33[1;32m"
dvrptrq=`grep "DVRPTR" /home/pi/autoarranque_07.ini`
dvrptrq=`expr substr $dvrptrq 8 3`
if [ $dvrptrq = "ON" ]
then
echo "\33[1;32m$dvrptrq"
else
echo "\33[1;31m"
fi
solof=`grep "DVRPTR" /home/pi/autoarranque_07.ini`
#=================================================================================

#==================================================================================
echo -n "\33[1;36m   113)\33[1;37m  Quitar YSF2DMR del autoarranque       - \33[1;32m"
var1=`grep "F2DMR" /home/pi/autoarranque_07.ini`
var1=`expr substr $var1 7 3`
if [ $var1 = "ON" ]
then
echo "\33[1;32m$var1"
else
echo "\33[1;31m"
fi
var2=`grep "F2DMR" /home/pi/autoarranque_07.ini`
#=================================================================================

#==================================================================================
echo -n "\33[1;36m   114)\33[1;37m  Quitar D-STAR REPEATER d autoarranque - \33[1;32m"
var1=`grep "dstarrepeater" /home/pi/autoarranque_07.ini`
var1=`expr substr $var1 15 3`
if [ $var1 = "ON" ]
then
echo "\33[1;32m$var1"
else
echo "\33[1;31m"
fi
var2=`grep "dstarrepeater" /home/pi/autoarranque_07.ini`
#=================================================================================

#==================================================================================
echo -n "\33[1;36m   115)\33[1;37m  Quitar AMBE SERVER del  autoarranque  - \33[1;32m"
var1=`grep "AMBE_SERVER" /home/pi/autoarranque_07.ini`
var1=`expr substr $var1 13 3`
if [ $var1 = "ON" ]
then
echo "\33[1;32m$var1"
else
echo "\33[1;31m"
fi
var2=`grep "dstarrepeater" /home/pi/autoarranque_07.ini`
#=================================================================================


#==================================================================================
echo -n "\33[1;36m   116)\33[1;37m  Quitar DMR2YSF del  autoarranque      - \33[1;32m"
var1=`grep "DMR2YSF" /home/pi/autoarranque_07.ini`
var1=`expr substr $var1 9 3`
if [ $var1 = "ON" ]
then
echo "\33[1;32m$var1"
else
echo "\33[1;31m"
fi
var2=`grep "DMR2YSF" /home/pi/autoarranque_07.ini`
#=================================================================================


#==================================================================================
echo -n "\33[1;36m   117)\33[1;37m  Quitar DMR2NXDN del  autoarranque     - \33[1;32m"
var1=`grep "NXDN" /home/pi/autoarranque_07.ini`
var1=`expr substr $var1 6 3`
if [ $var1 = "ON" ]
then
echo "\33[1;32m$var1"
else
echo "\33[1;31m"
fi
var2=`grep "NXDN" /home/pi/autoarranque_07.ini`
#=================================================================================



echo "\33[1;33m"

echo -n "\33[1;36m   201)\33[1;33m  Poner ircDDB en el autoarranque       - "
dstar=`grep "D-STAR" /home/pi/autoarranque_07.ini`
dstar=`expr substr $dstar 8 3`
if [ $dstar = "OFF" ]
then
echo "\33[1;31m$dstar"
else
echo "\33[1;31m"
fi
dstar=`grep "D-STAR" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   202)\33[1;33m  Poner BlueDV en el autoarranque       - "
bluedv=`grep "BlueDV" /home/pi/autoarranque_07.ini`
bluedv=`expr substr $bluedv 8 3`
if [ $bluedv = "OFF" ]
then
echo "\33[1;31m$bluedv"
else
echo "\33[1;31m"
fi
bluedv=`grep "BlueDV" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   203)\33[1;33m  Poner YSF en el autoarranque          - "
C4F=`grep "C4F" /home/pi/autoarranque_07.ini`
C4F=`expr substr $C4F 5 3`
if [ $C4F = "OFF" ]
then
echo "\33[1;31m$C4F"
else
echo "\33[1;31m"
fi
C4F=`grep "C4F" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   204)\33[1;33m  Poner DV4mini en el autoarranque      - "
DV4mini=`grep "DV4mini" /home/pi/autoarranque_07.ini`
DV4mini=`expr substr $DV4mini 9 3`
if [ $DV4mini = "OFF" ]
then
echo "\33[1;31m$DV4mini"
else
echo "\33[1;31m"
fi
bluedv=`grep "DV4mini" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   205)\33[1;33m  Poner Radio en el autoarranque        - "
MMDVMPLACA=`grep "MMDVMPLACA" /home/pi/autoarranque_07.ini`
MMDVMPLACA=`expr substr $MMDVMPLACA 12 3`
if [ $MMDVMPLACA = "OFF" ]
then
echo "\33[1;31m$MMDVMPLACA"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLACA" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   206)\33[1;33m  Poner DMR+ en autoarranque            - "
MMDVMPLUS=`grep "MMDVMPLUS" /home/pi/autoarranque_07.ini`
MMDVMPLUS=`expr substr $MMDVMPLUS 11 3`
if [ $MMDVMPLUS = "OFF" ]
then
echo "\33[1;31m$MMDVMPLUS"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMPLUS" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   207)\33[1;33m  Poner LIBRE en autoarranque           - "
MMDVMLIBRE=`grep "MMDVMLIBRE" /home/pi/autoarranque_07.ini`
MMDVMLIBRE=`expr substr $MMDVMLIBRE 12 3`
if [ $MMDVMLIBRE = "OFF" ]
then
echo "\33[1;31m$MMDVMLIBRE"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMLIBRE" /home/pi/autoarranque_07.ini`




echo -n "\33[1;36m   208)\33[1;33m  Poner BM en el autoarranque           - "
MMDVMBM=`grep "MMDVMBM" /home/pi/autoarranque_07.ini`
MMDVMBM=`expr substr $MMDVMBM 9 3`
if [ $MMDVMBM = "OFF" ]
then
echo "\33[1;31m$MMDVMBM"
else
echo "\33[1;31m"
fi
bluedv=`grep "MMDVMBM" /home/pi/autoarranque_07.ini`

echo -n "\33[1;36m   209)\33[1;33m  Poner SVXLINK en el autoarranque      - "
SVXLINK=`grep "SVXLINK" /home/pi/autoarranque_07.ini`
SVXLINK=`expr substr $SVXLINK 9 3`
if [ $SVXLINK = "OFF" ]
then
echo "\33[1;31m$SVXLINK"
else
echo "\33[1;31m"
fi
bluedv=`grep "SVXLINK" /home/pi/autoarranque_07.ini`



#==================================================================================
echo -n "\33[1;36m   210)\33[1;33m  Poner SOLO_DSTAR en el autoarranque   - "
solod=`grep "SOLO_DSTAR" /home/pi/autoarranque_07.ini`
solod=`expr substr $solod 12 3`
if [ $solod = "OFF" ]
then
echo "\33[1;31m$solod"
else
echo "\33[1;31m"
fi
solod=`grep "SOLO_DSTAR" /home/pi/autoarranque_07.ini`
#==================================================================================



#==================================================================================
echo -n "\33[1;36m   211)\33[1;33m  Poner SOLO_FUSION en el autoarranque  - "
solof=`grep "SOLO_FUSION" /home/pi/autoarranque_07.ini`
solof=`expr substr $solof 13 3`
if [ $solof = "OFF" ]
then
echo "\33[1;31m$solof"
else
echo "\33[1;31m"
fi
solof=`grep "SOLO_FUSION" /home/pi/autoarranque_07.ini`
#==================================================================================

#==================================================================================
echo -n "\33[1;36m   212)\33[1;33m  Poner DVRPTR en el autoarranque       - "
dvrptr=`grep "DVRPTR" /home/pi/autoarranque_07.ini`
dvrptr=`expr substr $dvrptr 8 3`
if [ $dvrptr = "OFF" ]
then
echo "\33[1;31m$dvrptr"
else
echo "\33[1;31m"
fi
solof=`grep "DVRPTR" /home/pi/autoarranque_07.ini`
#==================================================================================

#==================================================================================
echo -n "\33[1;36m   213)\33[1;33m  Poner YSF2DMR en el autoarranque      - "
ysf_dmr=`grep "F2DMR" /home/pi/autoarranque_07.ini`
ysf_dmr=`expr substr $ysf_dmr 7 3`
if [ $ysf_dmr = "OFF" ]
then
echo "\33[1;31m$ysf_dmr"
else
echo "\33[1;31m"
fi
trans=`grep "F2DMR" /home/pi/autoarranque_07.ini`
#==================================================================================

#==================================================================================
echo -n "\33[1;36m   214)\33[1;33m  Poner D-STAR REPEATER en autoarranque - "
var1=`grep "dstarrepeater" /home/pi/autoarranque_07.ini`
var1=`expr substr $var1 15 3`
if [ $var1 = "OFF" ]
then
echo "\33[1;31m$var1"
else
echo "\33[1;31m"
fi
trans=`grep "dstarrepeater" /home/pi/autoarranque_07.ini`
#==================================================================================

#==================================================================================
echo -n "\33[1;36m   215)\33[1;33m  Poner AMBE SERVER en el autoarranque  - "
var1=`grep "AMBE_SERVER" /home/pi/autoarranque_07.ini`
var1=`expr substr $var1 13 3`
if [ $var1 = "OFF" ]
then
echo "\33[1;31m$var1"
else
echo "\33[1;31m"
fi
trans=`grep "dstarrepeater" /home/pi/autoarranque_07.ini`
#==================================================================================


#==================================================================================
echo -n "\33[1;36m   216)\33[1;33m  Poner DMR2YSF en el autoarranque      - "
var1=`grep "DMR2YSF" /home/pi/autoarranque_07.ini`
var1=`expr substr $var1 9 3`
if [ $var1 = "OFF" ]
then
echo "\33[1;31m$var1"
else
echo "\33[1;31m"
fi
trans=`grep "DMR2YSF" /home/pi/autoarranque_07.ini`
#==================================================================================


#==================================================================================
echo -n "\33[1;36m   217)\33[1;33m  Poner DMR2NXDN en el autoarranque     - "
var1=`grep "NXDN" /home/pi/autoarranque_07.ini`
var1=`expr substr $var1 6 3`
if [ $var1 = "OFF" ]
then
echo "\33[1;31m$var1"
else
echo "\33[1;31m"
fi
trans=`grep "NXDN" /home/pi/autoarranque_07.ini`
#==================================================================================




echo "\33[0m "
echo "\33[1;36m    27)\33[1;32m *** RESTABLECER LOS AUTOARRANQUES A ${RED}OFF ${VERDE}***"
echo ""

echo "\33[1;36m    28)\33[1;31m *** REINICIAR LA RASPBERRY PI ***"
echo ""
echo "\33[1;36m     0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Por favor, elige una opción: " 
read escoger_menu
echo ""

case $escoger_menu in
101) echo ""
while true
do
clear
	                     actualizar=S
		                   case $actualizar in
			                 [sS]* ) echo ""
			                 echo "Quitando D-STAR del autoarranque >>>>>"
			                 sleep 2
			                 cd /home/pi/.config/autostart
                       mv IRCDDB.desktop /home/pi/AUTOARRANQUEV7
			                 sed -i "1c D-STAR=OFF" /home/pi/autoarranque_07.ini
			                 break;;
			                 [nN]* ) echo ""
			                 break;;
esac
done;;

102) echo ""
while true
do
clear
	                     actualizar=S
		                   case $actualizar in
			                 [sS]* ) echo ""
			                 echo "Quitando BlueDV del autoarranque >>>>>"
                       sleep 2
                       cd /home/pi/.config/autostart
                       mv BLUEDV.desktop /home/pi/AUTOARRANQUEV7
			                 sed -i "2c BlueDV=OFF" /home/pi/autoarranque_07.ini
			                 break;;
			                 [nN]* ) echo ""
			                 break;;
esac
done;;
103) echo ""
while true
do
clear

                       actualizar=S
		                   case $actualizar in
			                 [sS]* ) echo ""
			                 echo "Quitando YSF del autoarranque >>>>>"
                       sleep 2
                       cd /home/pi/.config/autostart
                       mv YSF.desktop /home/pi/AUTOARRANQUEV7
                       sed -i "3c C4F=OFF" /home/pi/autoarranque_07.ini
                       break;;
                       [nN]* ) echo ""
                       break;;
esac
done;;
104) echo ""
while true
do
clear            
                        actualizar=S
		                    case $actualizar in
			                  [sS]* ) echo ""
			                  echo "Quitando DV4mini del autoarranque >>>>>"
                        sleep 2
                        cd /home/pi/.config/autostart
                        mv DV4MINI.desktop /home/pi/AUTOARRANQUEV7
                        sed -i "4c DV4mini=OFF" /home/pi/autoarranque_07.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
105) echo ""
while true
do
clear              
                        actualizar=S
		                    case $actualizar in
			                  [sS]* ) echo ""
			                  echo "Quitando MMDVM del autoarranque >>>>>"
                        sleep 2
                        cd /home/pi/.config/autostart
                        mv RADIO.desktop /home/pi/AUTOARRANQUEV7
                        sed -i "5c MMDVMPLACA=OFF" /home/pi/autoarranque_07.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
106) echo ""
while true
do
clear              
                        actualizar=S
		                    case $actualizar in
			                  [sS]* ) echo ""
			                  echo "Quitando MMDVMPLUS del autoarranque >>>>>"
                        sleep 2
                        cd /home/pi/.config/autostart
                        mv DMRPLUS.desktop /home/pi/AUTOARRANQUEV7
                        sed -i "6c MMDVMPLUS=OFF" /home/pi/autoarranque_07.ini
                        break;;
                        [nN]* ) echo ""
                        break;;



esac
done;;
107) echo ""
while true
do
clear              
                        actualizar=S
                        case $actualizar in
                        [sS]* ) echo ""
                        echo "Quitando LIBRE del autoarranque >>>>>"
                        sleep 2
                        cd /home/pi/.config/autostart
                        mv LIBRE.desktop /home/pi/AUTOARRANQUEV7
                        sed -i "10c MMDVMLIBRE=OFF" /home/pi/autoarranque_07.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
108) echo ""
while true
do
clear              
                        actualizar=S
                        case $actualizar in
                        [sS]* ) echo ""
                        echo "Quitando BM del autoarranque >>>>>"
                        sleep 2
                        cd /home/pi/.config/autostart
                        mv BM.desktop /home/pi/AUTOARRANQUEV7
                        sed -i "7c MMDVMBM=OFF" /home/pi/autoarranque_07.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
109) echo ""
while true
do
clear	        
		  actualizar=S
		  case $actualizar in
			[sS]* ) echo ""
			echo "Quitando SVXLINK del autoarranque >>>>>"
      sleep 2
      cd /home/pi/.config/autostart
      mv SVXLINK.desktop /home/pi/AUTOARRANQUEV7
			sed -i "8c SVXLINK=OFF" /home/pi/autoarranque_07.ini
			break;;
			[nN]* ) echo ""
			break;;
esac
done;;
110) echo ""
while true
do
clear
            actualizar=S
            case $actualizar in
            [sS]* ) echo ""
            echo "Quitando SOLO_D-STAR del autoarranque >>>>>"
            sleep 2
            cd /home/pi/.config/autostart
            mv DSTARSOLO_05.desktop /home/pi/AUTOARRANQUEV7
            sed -i "11c SOLO_DSTAR=OFF" /home/pi/autoarranque_07.ini
            break;;
            [nN]* ) echo ""
            break;;
esac
done;;
111) echo ""
while true
do
clear
            actualizar=S
            case $actualizar in
            [sS]* ) echo ""
            echo "Quitando SOLO_FUSION del autoarranque >>>>>"
            sleep 2
            cd /home/pi/.config/autostart
            mv FUSIONSOLO.desktop /home/pi/AUTOARRANQUEV7
            sed -i "12c SOLO_FUSION=OFF" /home/pi/autoarranque_07.ini
            break;;
            [nN]* ) echo ""
            break;;
esac
done;;
112) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""                   
                                            echo "Quitando DVRPTR en el autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/.config/autostart
                                            mv DVRPTR.desktop /home/pi/AUTOARRANQUEV7
                                            sed -i "13c DVRPTR=OFF" /home/pi/autoarranque_07.ini
                                            break;;
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
113) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""                   
                                            echo "Quitando YSF2DMR en el autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/.config/autostart
                                            mv YSF2DMR.desktop /home/pi/AUTOARRANQUEV7
                                            sed -i "15c F2DMR=OFF" /home/pi/autoarranque_07.ini
                                            break;;
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
114) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""                   
                                            echo "Quitando D-STAR REPEATER del autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/.config/autostart
                                            mv dstarrepeater.desktop /home/pi/AUTOARRANQUEV7
                                            sed -i "9c dstarrepeater=OFF" /home/pi/autoarranque_07.ini
                                            break;;
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
115) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""                   
                                            echo "Quitando AMBE SERVER del autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/.config/autostart
                                            mv AMBE_SERVER.desktop /home/pi/AUTOARRANQUEV7
                                            sed -i "14c AMBE_SERVER=OFF" /home/pi/autoarranque_07.ini
                                            break;; 
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
116) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""                   
                                            echo "Quitando DMR2YSF del autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/.config/autostart
                                            mv DMR2YSF.desktop /home/pi/AUTOARRANQUEV7
                                            sed -i "16c DMR2YSF=OFF" /home/pi/autoarranque_07.ini
                                            break;; 
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
117) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""                   
                                            echo "Quitando DMR2NXDN del autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/.config/autostart
                                            mv DMR2NXDN.desktop /home/pi/AUTOARRANQUEV7
                                            sed -i "17c NXDN=OFF" /home/pi/autoarranque_07.ini
                                            break;; 
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
201) echo ""
while true
do
clear	        
		              actualizar=S
		              case $actualizar in
			            [sS]* ) echo ""
			            echo "Poniendo DSTAR en el autoarranque >>>>>"
                  sleep 2
                  cd /home/pi/AUTOARRANQUEV7
                  mv IRCDDB.desktop /home/pi/.config/autostart
			            sed -i "1c D-STAR=ON" /home/pi/autoarranque_07.ini
                  clear
                  echo "\33[1;32m**********************************************************"
                  echo "*                                                        *"
                  echo "*  \33[1;31mDebes de tener BM ó DMR+ en el autoarranque \33[1;32m*"
                  echo "*               \33[1;31m para que funcione D-STAR                \33[1;32m*"
                  echo "*                                                        *"
                  echo "**********************************************************"
                  echo ""
                  echo ""
			            break;;
			            [nN]* ) echo ""
			            break;;
esac
done;;
202) echo ""
while true
do
clear
	                                          actualizar=S
		                                        case $actualizar in
			                                      [sS]* ) echo ""                          
                                            echo "Poniendo BlueDV en el autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/AUTOARRANQUEV7
                                            mv BLUEDV.desktop /home/pi/.config/autostart
                                            sed -i "2c BlueDV=ON" /home/pi/autoarranque_07.ini
			                                      break;;
			                                      [nN]* ) echo ""
			                                      break;;
esac
done;;
203) echo ""
while true
do
clear              
                        actualizar=S
		                    case $actualizar in
			                  [sS]* ) echo ""
			                  echo "Poniendo YSF en el autoarranque >>>>>"
                        sleep 2
                        cd /home/pi/AUTOARRANQUEV7
                        mv YSF.desktop /home/pi/.config/autostart
                        sed -i "3c C4F=ON" /home/pi/autoarranque_07.ini
                        clear
                        echo "\33[1;32m**********************************************************"
                        echo "*                                                        *"
                        echo "*  \33[1;31mDebes de tener BM ó DMR+ en el autoarranque \33[1;32m*"
                        echo "*               \33[1;31m para que funcione YSF                   \33[1;32m*"
                        echo "*                                                        *"
                        echo "**********************************************************"
                        echo ""
                        echo ""                            
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
204) echo ""
while true
do
clear               
                        actualizar=S
		                    case $actualizar in
			                  [sS]* ) echo ""
			                  echo "Poniendo DV4mini en el autoarranque >>>>>"
                        sleep 2
                        cd /home/pi/AUTOARRANQUEV7
                        mv DV4MINI.desktop /home/pi/.config/autostart
                        sed -i "4c DV4mini=ON" /home/pi/autoarranque_07.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
205) echo ""
while true
do
clear           
                        actualizar=S
		                    case $actualizar in
			                  [sS]* ) echo ""
			                  echo "Poniendo Radio en el autoarranque >>>>>"
                        sleep 2
                        cd /home/pi/AUTOARRANQUEV7
                        mv RADIO.desktop /home/pi/.config/autostart
                        sed -i "5c MMDVMPLACA=ON" /home/pi/autoarranque_07.ini		            			            
                        sleep 5                
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
206) echo ""
while true
do
clear              
                        actualizar=S
	                      case $actualizar in
	                      [sS]* ) echo ""
                        echo "Poniendo DMR+ en el autoarranque >>>>>"
                        sleep 2
                        cd /home/pi/AUTOARRANQUEV7
                        mv DMRPLUS.desktop /home/pi/.config/autostart
                        sed -i "6c MMDVMPLUS=ON" /home/pi/autoarranque_07.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
207) echo ""
while true
do
clear              
                        actualizar=S
                        case $actualizar in
                        [sS]* ) echo ""
                        echo "Poniendo LIBRE en el autoarranque >>>>>"
                        sleep 2
                        cd /home/pi/AUTOARRANQUEV7
                        mv LIBRE.desktop /home/pi/.config/autostart
                        sed -i "10c MMDVMLIBRE=ON" /home/pi/autoarranque_07.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
208) echo ""
while true
do
clear
                        actualizar=S
                        case $actualizar in
                        [sS]* ) echo ""
                        echo "Poniendo BM en el autoarranque >>>>>"
                        sleep 2
                        cd /home/pi/AUTOARRANQUEV7
                        mv BM.desktop /home/pi/.config/autostart
                        sed -i "7c MMDVMBM=ON" /home/pi/autoarranque_07.ini
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
209) echo ""
while true
do
clear
		              actualizar=S
		              case $actualizar in
			            [sS]* ) echo ""
			            echo "Poniendo SVXLINK en el autoarranque >>>>>"
                  sleep 2
                  cd /home/pi/AUTOARRANQUEV7
                  mv SVXLINK.desktop /home/pi/.config/autostart
			            sed -i "8c SVXLINK=ON" /home/pi/autoarranque_07.ini
			            break;;
			            [nN]* ) echo ""
			            break;;
esac
done;;
210) echo ""
while true
do
clear
            actualizar=S
            case $actualizar in
            [sS]* ) echo ""
            echo "Poniendo SOLO_D-STAR en el autoarranque >>>>>"
            sleep 2
            cd /home/pi/AUTOARRANQUEV7
            mv DSTARSOLO_05.desktop /home/pi/.config/autostart
            sed -i "11c SOLO_DSTAR=ON" /home/pi/autoarranque_07.ini
            break;;
            [nN]* ) echo ""
            break;;
esac
done;;
211) echo ""
while true
do
clear
            actualizar=S
            case $actualizar in
            [sS]* ) echo ""
            echo "Poniendo solo FUSION en el autoarranque >>>>>"
            sleep 2
            cd /home/pi/AUTOARRANQUEV7
            mv FUSIONSOLO.desktop /home/pi/.config/autostart
            sed -i "12c SOLO_FUSION=ON" /home/pi/autoarranque_07.ini
            break;;
            [nN]* ) echo ""
            break;;
esac
done;;
212) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""
                                            echo "Poniendo DVRPTR en el autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/AUTOARRANQUEV7
                                            mv DVRPTR.desktop /home/pi/.config/autostart
                                            sed -i "13c DVRPTR=ON" /home/pi/autoarranque_07.ini
                                            break;;
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
213) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""
                                            echo "Poniendo YSF2DMR en el autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/AUTOARRANQUEV7
                                            mv YSF2DMR.desktop /home/pi/.config/autostart
                                            sed -i "15c F2DMR=ON" /home/pi/autoarranque_07.ini
                                            break;;
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
214) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""
                                            echo "Poniendo D-STAR REPEATER en el autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/AUTOARRANQUEV7
                                            mv dstarrepeater.desktop /home/pi/.config/autostart
                                            sed -i "9c dstarrepeater=ON" /home/pi/autoarranque_07.ini
                                            break;;
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
215) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""
                                            echo "Poniendo AMBE SERVER en el autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/AUTOARRANQUEV7
                                            mv AMBE_SERVER.desktop /home/pi/.config/autostart
                                            sed -i "14c AMBE_SERVER=ON" /home/pi/autoarranque_07.ini
                                            break;;
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
216) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""
                                            echo "Poniendo DMR2YSF en el autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/AUTOARRANQUEV7
                                            mv DMR2YSF.desktop /home/pi/.config/autostart
                                            sed -i "16c DMR2YSF=ON" /home/pi/autoarranque_07.ini
                                            break;;
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
217) echo ""
while true
do
clear
                                            actualizar=S
                                            case $actualizar in
                                            [sS]* ) echo ""
                                            echo "Poniendo DMR2NXDN en el autoarranque >>>>>"
                                            sleep 2
                                            cd /home/pi/AUTOARRANQUEV7
                                            mv DMR2NXDN.desktop /home/pi/.config/autostart
                                            sed -i "17c NXDN=ON" /home/pi/autoarranque_07.ini
                                            break;;
                                            [nN]* ) echo ""
                                            break;;
esac
done;;
27) echo ""
while true
do
clear
                        echo "\33[1;31m" #color rojo
                        echo " *****************************************************"
                        echo " ** OJO!! ESTO PONDRÁ TODOS LOS AUTOARRANQUES EN OFF *"
                        echo " *****************************************************"
                        echo "\33[1;37m" #color
                        read -p 'Quieres seguir? S/N: ' ejecutar1
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> RESTABLECIENDO TODOS LOS AUTOARRANQUES EN OFF  >>>>>"
                        #cd /home/pi/V30
                        #git pull
                        #cp -f /home/pi/V30/autoarranque_07.ini /home/pi/
                        sleep 2
                        cd /home/pi/.config/autostart

                        mv IRCDDB.desktop /home/pi/AUTOARRANQUEV7
                        mv BM.desktop /home/pi/AUTOARRANQUEV7
                        mv BLUEDV.desktop /home/pi/AUTOARRANQUEV7
                        mv YSF.desktop /home/pi/AUTOARRANQUEV7 
                        mv DV4MINI.desktop /home/pi/AUTOARRANQUEV7
                        mv RADIO.desktop /home/pi/AUTOARRANQUEV7
                        mv DMRPLUS.desktop /home/pi/AUTOARRANQUEV7
                        mv LIBRE.desktop /home/pi/AUTOARRANQUEV7
                        mv SVXLINK.desktop /home/pi/AUTOARRANQUEV7
                        mv DSTARSOLO_05.desktop /home/pi/AUTOARRANQUEV7
                        mv FUSIONSOLO.desktop /home/pi/AUTOARRANQUEV7
                        mv DVRPTR.desktop /home/pi/AUTOARRANQUEV7
                        mv YSF2DMR.desktop /home/pi/AUTOARRANQUEV7
                        mv dstarrepeater.desktop /home/pi/AUTOARRANQUEV7
                        mv AMBE_SERVER.desktop /home/pi/AUTOARRANQUEV7
                        mv DMR2YSF.desktop /home/pi/AUTOARRANQUEV7
                        mv DMR2NXDN.desktop /home/pi/AUTOARRANQUEV7

sed -i "1c D-STAR=OFF" /home/pi/autoarranque_07.ini
sed -i "2c BlueDV=OFF" /home/pi/autoarranque_07.ini
sed -i "3c C4F=OFF" /home/pi/autoarranque_07.ini
sed -i "4c DV4mini=OFF" /home/pi/autoarranque_07.ini
sed -i "5c MMDVMPLACA=OFF" /home/pi/autoarranque_07.ini
sed -i "6c MMDVMPLUS=OFF" /home/pi/autoarranque_07.ini
sed -i "7c MMDVMBM=OFF" /home/pi/autoarranque_07.ini
sed -i "8c SVXLINK=OFF" /home/pi/autoarranque_07.ini
sed -i "9c dstarrepeater=OFF" /home/pi/autoarranque_07.ini
sed -i "10c MMDVMLIBRE=OFF" /home/pi/autoarranque_07.ini
sed -i "11c SOLO_DSTAR=OFF" /home/pi/autoarranque_07.ini
sed -i "12c SOLO_FUSION=OFF" /home/pi/autoarranque_07.ini
sed -i "13c DVRPTR=OFF" /home/pi/autoarranque_07.ini
sed -i "14c AMBE_SERVER=OFF" /home/pi/autoarranque_07.ini
sed -i "15c F2DMR=OFF" /home/pi/autoarranque_07.ini
sed -i "16c DMR2YSF=OFF" /home/pi/autoarranque_07.ini
sed -i "17c NXDN=OFF" /home/pi/autoarranque_07.ini



                        exit;
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
28) echo ""
while true
do
clear
echo " \33[1;31m  ************************************************************"
echo "   *                                                          *"
echo "   *     OJO!!   SE VA A REINICIAR LA RASPBERRY PI            *"
echo "   *                                                          *"
echo "   ************************************************************"
echo ""
                read -p '   Estás seguro de querer reiniciar ? Si/No: ' ejecutar13
                    case $ejecutar13 in
                        [sS]* ) echo ""
                        echo "ok >>>>>"
                        sudo reboot
                        echo ""
                        echo "Ok, se ha ejecutado correctamente"
                        echo ""
                        break;;
                        [nN]* ) echo ""
                        break;;
esac
done;;
0) echo "."
clear
sudo chmod +x -R /home/pi/.config/autostart
echo "\33[1;33m   **************************************************"
echo "   *                                                *"
echo "   *     CERRANDO SCRIPT                            *"
echo "   *                                                *"
echo "   **************************************************"
sleep 2
clear
exit;;	
esac
done


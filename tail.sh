
#!bin/bash
#prepara formato log ejp: MMDVM-2018-03-26.log
hoy=$(date +%Y%m%d)
ano=`expr substr $hoy 1 4`
mes=`expr substr $hoy 5 2`
dia=`expr substr $hoy 7 2`
echo "$hoy"
echo "$ano"
echo "$mes"
echo "$dia"
fecha="MMDVM-"$ano"-"$mes"-"$dia".log"
echo "$fecha"
cd /home/pi/MMDVMHost
c=`tail -n 1 -c 2 $fecha`
echo "$c"
if [ "$c" = "%" ];
then
echo "esta el signo de %"
sed -i "30c Call" /home/pi/info_panel_control.ini
else
echo "$a"
a=`tail -n 1 -c 15 $fecha`
sed -i "30c $a" /home/pi/info_panel_control.ini
fi



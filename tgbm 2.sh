
#!bin/bash
#prepara la presentación del indicativo que habla en Brandmeister
hoy=$(date +%Y%m%d)
ano=`expr substr $hoy 1 4`
mes=`expr substr $hoy 5 2`
dia=`expr substr $hoy 7 2`
fecha="MMDVM-"$ano"-"$mes"-"$dia".log"
cd /home/pi/MMDVMHost
c=`tail -n 1 -c 2 $fecha`
if [ "$c" = "%" ];
then
echo "esta el signo de %"
sed -i "1c ..........................................................................Call" /home/pi/tgbm
else
tail -7 $fecha | tee /home/pi/tgbm
head -1 /home/pi/tgbm | tee /home/pi/tgbm
tail -c 20 /home/pi/tgbm
fi

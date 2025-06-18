#!/bin/bash
clear
echo "\33[1;32m ACTUALIZANDO IDS INDICATIVOS >>>>>"
sleep 10

#var=`grep -n -m 1 '\<DMRIDPATH\>' /home/pi/MMDVMHost/linux/DMRIDUpdate.sh`
#buscar=":"
#largo_linea=`expr index $var $buscar`
#largo_linea=`expr $largo_linea - 1`
#numero_linea=`expr substr $var 1 $largo_linea`
#letrac=c
#linea_sed=$numero_linea$letrac
#sed -i "$linea_sed DMRIDPATH=/home/pi/MMDVMHost" /home/pi/MMDVMHost/linux/DMRIDUpdate.sh
#
## DMR IDs now served by RadioID.net
#var=`grep -n -m 1 '\<DATABASEURL\>' /home/pi/MMDVMHost/linux/DMRIDUpdate.sh`
#buscar=":"
#largo_linea=`expr index $var $buscar`
#largo_linea=`expr $largo_linea - 1`
#numero_linea=`expr substr $var 1 $largo_linea`
#letrac=c
#linea_sed=$numero_linea$letrac
#sed -i "$linea_sed DATABASEURL='https://ham-digital.org/status/users.csv'" /home/pi/MMDVMHost/linux/DMRIDUpdate.sh
#
#sudo sh /home/pi/MMDVMHost/linux/DMRIDUpdate.sh

                        # 23-07-2022 cambio actualizar para que salgan los indicativos en DVSWITCH:
                        cd /home/pi/MMDVMHost/
                        sudo rm DMRIds.dat
                        sudo curl --fail -o DMRIds.dat -s http://www.pistar.uk/downloads/DMRIds.dat
                        sudo chmod 777 -R /home/pi/MMDVMHost/
                        
                        
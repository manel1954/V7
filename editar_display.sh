#!/bin/bash
# script para instalar md380tools
while true
do
clear

echo "\33[1;32m   ******************************************************"
echo "   *                                                    *"
echo "   *  Modificar la información en el display del Walki  *"
echo "   *                                                    *"
echo "   ******************************************************"
echo ""
echo "\33[1;33m 1) Modificar como el ejemplo siguiente:"
echo "\33[1;37m"
echo " 2143175 -> TG 21465        "
echo " EA3EIZ     2143175         "
echo " Manel Diaz                 "
echo " Spain                      "
echo "\33[1;32m Sociedad                   "
echo " by EA3EIZ                  "
echo "\33[1;37m-------------------"


echo ""
echo "\33[1;33m 2) Modificar como el ejemplo siguiente:"
echo "\33[1;37m"


echo " 2143175 -> TG 21465        "
echo " EA3EIZ     2143175         "
echo " Manel Diaz                 "
echo " Spain                      "
echo ""
echo "\33[1;32m by EA3EIZ                  "
echo "\33[1;37m-------------------"
echo ""

echo "\33[1;34m 0) Salir del script"
echo ""
echo "\33[1;32m Por favor, elige una opción... 1,2,0" 
read escoger_menu
echo ""

case $escoger_menu in
1) echo ""

while true
do


clear
echo "\33[1;37m*****************************"
echo " ejemplo 1:                 *"
echo " -------------------        *"
echo "                            *"
echo " 2143175 -> TG 21465        *"
echo " EA3EIZ     2143175         *"
echo " Manel Diaz                 *"
echo " Spain                      *"
echo "\33[1;32m Sociedad                   *"
echo " by EA3EIZ                  *"
echo "\33[1;37m                            *"
echo "*****************************"
echo ""

echo "\33[1;33m"
           	          actualizar=S 
                              case $actualizar in
			[sS]* ) echo ""
echo "Cambiar texto Sociedad"
#echo "\33[1;31m Ojo!!! Solo se permiten caracteres de la A-Z"
read sociedad
echo "Cambiar texto by EA3EIZ"
echo "\33[1;31m Ojo!!! Solo se permiten caracteres de la A-Z y el espacio"
read by
sed -i "11c print trim(\$\1) T trim(\$\2) T trim(\$\3) T trim(\$\6) T trim(\$\5) T trim(\$\4) T trim(\$\7)" /home/pi/md380tools/db/strip.awk
cd /home/pi/md380tools/
sudo make clean
sudo make updatedb flashdb
break;;
			[nN]* ) echo ""
			break;;
esac
done;;

2) echo ""

while true
do


clear
echo "\33[1;37m*****************************"
echo " ejemplo 2:                 *"
echo " -------------------        *"
echo "                            *"
echo " 2143175 -> TG 21465        *"
echo " EA3EIZ     2143175         *"
echo " Manel Diaz                 *"
echo " Spain                      *"
echo "                            *"
echo "\33[1;32m by EA3EIZ                  *"
echo "\33[1;37m                            *"
echo "*****************************"
echo ""

echo "\33[1;33m"
           	          
                              actualizar=S 
                              case $actualizar in
			[sS]* ) echo ""

echo "Cambiar texto by EA3EIZ"
echo "\33[1;31m Ojo!!! Solo se permiten caracteres de la A-Z y el espacio"
read by

# awk ORIGINAL print trim($1) T trim($2) T trim($3) T trim($5) T trim($6) T trim($4) T trim($7)

sed -i "11c print trim(\$\1) T trim(\$\2) T trim(\$\3) T trim(\$\7) T trim(\$\8) T trim(\$\1) T trim(\"\ $by\"\)" /home/pi/md380tools/db/strip.awk

cd /home/pi/md380tools/
sudo make clean
sudo make updatedb flashdb
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
sleep 3
clear
exit;;	
esac
done


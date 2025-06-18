#!/bin/bash
while true
do
clear
echo "\33[1;32m   ************************************************************************"
echo "\33[1;32m   *                                                                      *"
echo "   *  \33[1;33m  Incompatible con BlueDV abierto                                  \33[1;32m *"
echo "   *  \33[1;37m  Cerrar BlueDV desde el icono Cerrar BlueDv                        \33[1;32m*"
echo "\33[1;32m   *                                                                      *"
echo "   ************************************************************************"

#echo -n "\33[1;33m   Pulsa enter para cerrar esta ventana " 

#read parado

sleep 7

exit;

read escoger_menu
echo ""

case $escoger_menu in


1) echo ""
clear
echo "\33[1;32m   ******************************************"
echo "   *                                        *"
echo "   * \33[1;31m             (C)EA3EIZ\33[1;32m                 *"
echo "   *                                        *"
echo "   ******************************************"
sleep 1
exit;;	
esac
done
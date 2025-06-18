#!/bin/bash
while true
do
clear
echo "\33[1;32m   ********************************************************************"
echo "\33[1;32m   *                                                                  *"
echo "   *  \33[1;33m   Para que funcione D-STAR, se ha de hacer lo siguiente: \33[1;32m      *"
echo "   *  \33[1;37m - Cerrar BlueDV desde el icono Cerrar BlueDv                   \33[1;32m*"
echo "   *  \33[1;37m - Abrir DMR+, BRANDMEISTER ó D-STAR Repeater                   \33[1;32m*"
echo "   *  \33[1;37m - Pulsar de nuevo Abrir ircDDB                                 \33[1;32m*"
echo "\33[1;32m   *                                                                  *"
echo "   ********************************************************************"

echo -n "\33[1;33m   Pulsa enter para cerrar esta ventana " 

read parado

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
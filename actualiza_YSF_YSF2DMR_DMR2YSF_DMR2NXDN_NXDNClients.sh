#!/bin/bash

#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

                        echo "\v\v\v\v\v\v\v\v\v\v\v"
                        echo "${VERDE}"
                        echo " ****************************************************************************"
                        echo " ****************************************************************************"
                        echo "                                                                             "
                        echo "                                 ACTUALIZANDO                                "
                        echo -n "${AMARILLO}"
                        echo "                                  YSFClients              "
                        echo -n "${VERDE}"
                        echo "                                                                             "
                        echo " ****************************************************************************"
                        echo " ****************************************************************************"
                        sleep 3
                        cd /home/pi
                        sudo rm -R YSFClients
                        git clone https://github.com/ea3eiz/YSFClients
                        cd YSFClients
                        cd YSFGateway
                        sudo sed -i '209c std::string name = "IMAGEN ADER V02.07";' YSFGateway.cpp
                        sudo sed -i '28c const char* YSF_VERSION = "ADER V2.07";' YSFNetwork.cpp
                        make
                        # sudo make install
                        # sudo rm *.cpp
                        # sudo rm *.o
                        # sudo rm *.h
                        # sudo rm *.log
                        # sudo rm *.vcxp
                        # sudo rm *.vcxproj
                        # sudo rm *.filters 
                        # sudo rm Makefile
                        # sudo rm *.md
                        # sudo rm *.sh
                        clear
                        echo "\v\v\v\v\v\v\v\v\v\v\v"
                        echo "${ROJO}"
                        echo " ****************************************************************************"
                        echo " ****************************************************************************"
                        echo "                                                                             "
                        echo "                            FIN DE LA ACTUALIZACIÓN                                "
                        echo -n "${AMARILLO}"
                        echo "                                  YSFClients              "
                        echo -n "${ROJO}"
                        echo "                                                                             "
                        echo " ****************************************************************************"
                        echo " ****************************************************************************"
                        sleep 3
                        clear
                        echo "\v\v\v\v\v\v\v\v\v\v\v"
                        echo "${BLANCO}"
                        echo " ****************************************************************************"
                        echo " ****************************************************************************"
                        echo "                                                                             "
                        echo "                   YA TIENES LAS ÚLTIMAS ACTUALIZACIONES DE:                     "
                        echo -n "${VERDE}"
                        echo "                   YSF2DMR, DMR2YSF, DMR2NXDN y NXDNClients                 "
                        echo -n "${BLANCO}"
                        echo "                                                                             "
                        echo " ****************************************************************************"
                        echo " ****************************************************************************"
                        sleep 7

                 
                        

#!/bin/bash
# Flashing MMDVM_HS Chinas
sudo killall MMDVMDSTAR
sudo killall MMDVMBM
sudo killall MMDVMPLUS
sudo killall MMDVMLIBRE
sudo killall MMDVM
sudo killall MMDVMFUSION
sudo killall DMR2YSF
sudo killall DMR2NXDN
sudo killall YSF2DMR

mkdir /tmp/mmdvmhshatfirmware 2> /dev/null
echo "Flashing your ${1} modem to the latest version"
curl -s -L https://github.com/juribeparada/MMDVM_HS/releases/latest | egrep -o '/juribeparada/MMDVM_HS/releases/download/v[0-9.]*/install_fw_hshat.sh' | wget --base=http://github.com/ -i - -O /tmp/mmdvmhshatfirmware/flash.sh
chmod +x /tmp/mmdvmhshatfirmware/flash.sh
cd  /tmp/mmdvmhshatfirmware
./flash.sh
clear
echo "*********************************************"
echo "        ACTUALIZACIÓN REALIZADA              "
echo "*********************************************"
sleep 3
#!/bin/sh
resetprop -n gsm.sim.operator.iso-country "EG"
touch /data/adb/modules/egisocode/egypt.log
echo "$(date): Успешно установлен код египта!" >> /data/adb/modules/egisocode/egypt.log
echo "Успешно установлен код египта!"
#!/system/bin/sh
chmod +x /data/adb/modules/egisocode/service.sh
resetprop -n gsm.sim.operator.iso-country "EG"
ui_print "Успешно установлен код египта!"
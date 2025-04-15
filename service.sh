#!/system/bin/sh

{
  # Ждем полной загрузки системы
  until [ "$(getprop sys.boot_completed)" = "1" ]; do
    sleep 1
  done
  echo "$(date): Начинаем" >> /data/local/tmp/egypt.log

  # Устанавливаем свойство
  resetprop -n gsm.sim.operator.iso-country "EG"

  touch /data/adb/modules/egisocode/egypt.log
  echo "$(date): Закончили" >> /data/adb/modules/egisocode/egypt.log
} &
#!/system/bin/sh
resetprop -n gsm.sim.operator.iso-country "EG"
(
    # Ждем полной загрузки
    until [ "$(getprop sys.boot_completed)" = "1" ]; do
        sleep 1
    done

    # Устанавливаем свойство
    resetprop -n gsm.sim.operator.iso-country "EG"

    # Логируем результат
    LOG_FILE="/data/local/tmp/egypt.log"
    echo "$(date): Свойство установлено" >> $LOG_FILE
) &
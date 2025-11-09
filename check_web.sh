#!/bin/bash

# Проверка доступности порта 80
nc -z localhost 80
PORT_STATUS=$?

# Проверка наличия файла index.html
if [ -f /var/www/html/index.html ]; then
    FILE_STATUS=0
else
    FILE_STATUS=1
fi

# Если порт или файл недоступны — возвращаем код 1
if [ $PORT_STATUS -ne 0 ] || [ $FILE_STATUS -ne 0 ]; then
    exit 1
else
    exit 0
fi

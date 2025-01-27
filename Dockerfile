# Используем базовый образ miniconda3
FROM continuumio/miniconda3:latest

# Устанавливаем рабочую директорию
WORKDIR /app

# Создаем sh скрипт 1.sh
RUN echo '#!/bin/bash' > 1.sh && \
    echo 'echo "Hello Netology"' >> 1.sh

# Делаем скрипт исполняемым
RUN chmod +x 1.sh

# Устанавливаем необходимые пакеты Python
RUN pip install mlflow boto3 pymysql

# Указываем команду запуска скрипта при старте контейнера
CMD ["./1.sh"]






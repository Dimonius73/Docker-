# ���������� ������� ����� miniconda3
FROM continuumio/miniconda3:latest

# ������������� ������� ����������
WORKDIR /app

# ������� sh ������ 1.sh
RUN echo '#!/bin/bash' > 1.sh && \
    echo 'echo "Hello Netology"' >> 1.sh

# ������ ������ �����������
RUN chmod +x 1.sh

# ������������� ����������� ������ Python
RUN pip install mlflow boto3 pymysql

# ��������� ������� ������� ������� ��� ������ ����������
CMD ["./1.sh"]






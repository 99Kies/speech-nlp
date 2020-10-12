FROM python:3.7-alpine

RUN pip install flask -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . /app

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod u+x /docker-entrypoint.sh

ENTRYPOINT ./docker-entrypoint.sh

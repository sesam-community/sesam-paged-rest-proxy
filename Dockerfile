FROM python:3-alpine
MAINTAINER Ashkan Vahidishams "ashkan.vahidishams@sesam.io"
COPY ./service /service

RUN pip install --upgrade pip

RUN pip install -r /service/requirements.txt

EXPOSE 5001/tcp

CMD ["python3", "-u", "./service/paged-rest-proxy.py"]
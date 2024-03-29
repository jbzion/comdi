FROM python:3.9-buster

COPY release/linux/amd64/server /app/
COPY *.py /app/
COPY requirements.txt /app
COPY *.sh /app
WORKDIR /app

RUN chmod a+x run.sh
RUN chmod a+x cme.sh
RUN pip3 install -r requirements.txt

EXPOSE 80

ENTRYPOINT ["./run.sh"]

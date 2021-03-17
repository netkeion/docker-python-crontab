FROM python:slim

RUN apt-get update && apt-get -y install --no-install-recommends cron && rm -rf /var/lib/apt/lists/* 

WORKDIR /usr/src/app

COPY . ./
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /myapp

CMD [ "run.sh" ]
FROM python:slim

RUN apt-get update && apt-get -y install --no-install-recommends cron openssh-client && rm -rf /var/lib/apt/lists/* 

WORKDIR /usr/src/app

COPY . ./
RUN pip install --no-cache-dir -r requirements.txt
RUN chmod u+x /usr/src/app/run.sh

WORKDIR /myapp

CMD [ "/usr/src/app/run.sh" ]
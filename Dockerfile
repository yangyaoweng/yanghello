FROM ubuntu:trusty
MAINTAINER yangyaoweng 317267568@qq.com

RUN apt-get update && apt-get install -y gcc && apt-get install -y python-software-properties && add-apt-repository ppa:chris-lea/node.js && apt-get update && apt-get install -y nodejs
EXPOSE 80
COPY server.js /
CMD ["nodejs", "/server.js"]

FROM debian:sid
MAINTAINER Maxim Fedorenko, varlllog@gmail.com

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y cppcheck
RUN apt-get install -y vera++
RUN apt-get install -y rats

RUN apt-get clean -y && apt-get autoclean -y

ADD init.sh /tmp/init.sh

CMD ["/tmp/init.sh"]


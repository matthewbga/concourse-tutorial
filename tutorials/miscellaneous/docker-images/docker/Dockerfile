FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install git

ADD hello-world /bin/hello-world

ENTRYPOINT ["/bin/hello-world"]
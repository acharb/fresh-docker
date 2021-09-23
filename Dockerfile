FROM ubuntu:20.04

ADD dependencies /
RUN ["chmod", "+x", "dependencies"]
RUN /dependencies

# ADD common /opt/stellar-default/common

ADD start /
RUN ["chmod", "+x", "start"]

ENTRYPOINT ["/start"]
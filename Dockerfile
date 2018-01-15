FROM ubuntu:16.04
ADD setup.sh /setup.sh
RUN /setup.sh
ENTRYPOINT ["/usr/bin/thrift1"]


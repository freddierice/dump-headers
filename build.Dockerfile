FROM ubuntu:latest
ADD target/dump-headers /dump-headers
CMD /dump-headers

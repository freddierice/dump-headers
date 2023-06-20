FROM ubuntu:latest
ADD target/dump-headers /dump-headers
RUN /dump-headers

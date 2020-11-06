#FROM alpine:3.11
#RUN apk update && apk add python3

FROM ubuntu:18.04

RUN apt-get update && \
    apt-get upgrade -y  && \
    apt-get install -y python3

COPY pi.py /code/pi.py

RUN chmod +rx /code/pi.py

ENV PATH "/code:$PATH"



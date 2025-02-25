FROM ubuntu:24.10

RUN apt-get -y update
RUN apt-get -y install build-essential

RUN mkdir /build
COPY Makefile /build/Makefile
COPY mm-ijk.c /build/mm-ijk.c
COPY mm-ikj.c /build/mm-ikj.c
COPY mm-jik.c /build/mm-jik.c
COPY mm-jki.c /build/mm-jki.c
COPY mm-kij.c /build/mm-kij.c
COPY mm-kji.c /build/mm-kji.c
COPY build-and-run.sh /build/build-and-run.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod a+rwx /build/build-and-run.sh
RUN chmod a+rwx /entrypoint.sh

ENTRYPOINT /entrypoint.sh

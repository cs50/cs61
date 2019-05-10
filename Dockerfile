FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        bochs \
        g++ \
        kcachegrind \
        linux-tools-generic \
        qemu

WORKDIR /mnt

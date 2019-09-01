FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        bochs \
        build-essential \
        emacs \
        g++ \
        git \
        kcachegrind \
        linux-tools-generic \
        qemu \
        vim

WORKDIR /mnt

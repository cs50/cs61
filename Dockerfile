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
        sudo \
        vim

RUN adduser --disabled-password --gecos "" --no-create-home ubuntu && \
    echo "ubuntu ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/ubuntu && \
    chmod 440 /etc/sudoers.d/ubuntu

USER ubuntu
WORKDIR /mnt

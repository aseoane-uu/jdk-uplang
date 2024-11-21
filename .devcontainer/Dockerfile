FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends git libfreetype6-dev build-essential libfontconfig-dev libcups2-dev libx11-dev libxext-dev libxrender-dev libxrandr-dev libxtst-dev libxt-dev libasound2-dev libffi-dev autoconf zip grep file gdb

# extra for Docker-dev
USER vscode
WORKDIR /home/vscode
RUN wget https://download.oracle.com/java/23/latest/jdk-23_linux-x64_bin.tar.gz
RUN tar -xvf jdk-23_linux-x64_bin.tar.gz
RUN rm jdk-23_linux-x64_bin.tar.gz

## Post install

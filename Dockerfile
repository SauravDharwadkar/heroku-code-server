FROM ubuntu:20.04

#use help to debug and finding whats wrong with my Dockerfile not working properly on heroku
# https://github.com/ivang7/heroku-vscode
RUN apt-get update \
 && apt-get upgrade -y
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow
RUN apt-get install -y tzdata && \
    apt-get install -y \
    curl \
    wget \
    python3 \
    nodejs \
    gcc \ 
    python3-pip \
    gnupg \
    dumb-init \
    htop \
    locales \
    man \
    nano \
    git \
    procps \
    ssh \
    sudo \
    vim \
   rclone \
   fuse \
    && rm -rf /var/lib/apt/lists/*



  RUN sed -i "s/# en_US.UTF-8/en_US.UTF-8/" /etc/locale.gen \
  && locale-gen
ENV LANG=en_US.UTF-8

RUN chsh -s /bin/bash
ENV SHELL=/bin/bash

RUN adduser --gecos '' --disabled-password coder && \
  echo "coder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/nopasswd

RUN curl -fsSL https://code-server.dev/install.sh | sh
ENV PORT=8080
EXPOSE 8080
USER coder
WORKDIR /home/coder
COPY run.sh /home/coder
RUN code-server --install-extension liximomo.sftp --force
RUN code-server --install-extension ms-python.python --force
RUN mkdir -p /home/coder/.vscode
COPY sftp.json /home/coder/.vscode

CMD bash /home/coder/run.sh ; /usr/bin/code-server --host 0.0.0.0 --port $PORT /home/coder

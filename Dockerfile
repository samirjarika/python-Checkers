FROM ubuntu:20.04

RUN apt-get update --fix-missing && apt-get install -y python-pygame
RUN useradd -m -U -s /bin/bash pygame

USER pygame
WORKDIR /home/techcloud/Git/checkerGame
ENV SHELL /bin/bash

CMD /bin/bash
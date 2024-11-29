FROM ubuntu:latest

RUN sudo apt-get update && sudo apt-get install -y \
    python3.10 \
    python3-pip \
    python-is-python3 \
    git

RUN pip3 install pyyaml

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

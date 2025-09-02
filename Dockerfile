FROM ubuntu:24.04

RUN apt update && apt install -y wget

WORKDIR /opt

RUN wget https://github.com/iqtree/iqtree2/releases/download/v2.4.0/iqtree-2.4.0-Linux-intel.tar.gz && \
         tar xvfz iqtree-2.4.0-Linux-intel.tar.gz && \
         cp iqtree-2.4.0-Linux-intel/bin/iqtree2 /usr/bin && \
         cp iqtree-2.4.0-Linux-intel/bin/iqtree2 /usr/bin/iqtree

WORKDIR /data

CMD ["iqtree"]

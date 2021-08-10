FROM ubuntu:18.04

RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install -y git cmake build-essential clang ca-certificates curl \
    unzip libboost-dev python3-dev python3-pip && apt-get clean

# get and install the latest z3 relesae
RUN cd /tmp && \
    curl -o z3.tgz -L  https://github.com/Z3Prover/z3/archive/z3-4.8.12.tar.gz && \
    tar zxf z3.tgz && cd z3-z3-4.8.12 && \
    CC=clang CXX=clang++ python3 scripts/mk_make.py && cd build && make \
    && make install && cd /tmp && rm /tmp/z3.tgz && rm -rf /tmp/z3-z3-4.8.12

# Install capstone
RUN cd /tmp && \
    curl -o cap.tgz -L https://github.com/aquynh/capstone/archive/3.0.4.tar.gz && \
    tar xvf cap.tgz && cd capstone-3.0.4/ && ./make.sh install && cd /tmp && \
    rm /tmp/cap.tgz && rm -rf /tmp/capstone-3.0.4


# Install pintool
RUN cd /opt && curl -o pin.tgz -L https://software.intel.com/sites/landingpage/pintool/downloads/pin-2.14-71313-gcc.4.4.7-linux.tar.gz && \
    tar zxf pin.tgz && rm pin.tgz

# now install Triton
RUN cd /opt/pin-2.14-71313-gcc.4.4.7-linux/source/tools/ && \
    curl -o triton.zip -L https://github.com/thatreguy/Triton/archive/master.zip && \
    unzip triton.zip && rm triton.zip && cd Triton-master/ && mkdir build && cd build && \
    cmake -G "Unix Makefiles" -DPINTOOL=on -DKERNEL4=on .. && make install && cd ..

RUN apt install -y llvm-10-dev
RUN ln -s /usr/bin/llvm-config-10 /usr/bin/llvm-config
# Install Tigress_protection dependencies
RUN pip3 install --upgrade pip==9.0.1
RUN pip3 install setuptools --upgrade
RUN pip3 install llvmlite
RUN pip3 install https://github.com/quarkslab/arybo/archive/master.zip
#RUN pip3 install https://github.com/lief-project/packages/raw/lief-master-latest/pylief-0.9.0.dev.zip
RUN pip3 install lief

ENTRYPOINT /bin/bash


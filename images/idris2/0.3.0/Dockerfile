FROM debian:buster AS build

RUN apt-get update && \
    apt-get install -y chezscheme curl gcc make

ARG VER=0.3.0

RUN mkdir /tmp/idris2 && \
    cd /tmp/idris2 && \
    curl https://www.idris-lang.org/idris2-src/idris2-${VER}.tgz -o idris2.tgz && \
    tar -xzvf idris2.tgz && \
    cd Idris2-${VER} && \
    make bootstrap SCHEME=chezscheme && \
    make install

FROM debian:buster

COPY --from=build /root/.idris2 /root/.idris2

ENV PATH="/root/.idris2/bin:${PATH}"
ENV LD_LIBRARY_PATH="/root/.idris2/lib:${LD_LIBRARY_PATH}"

RUN apt-get update && \
    apt-get install -y chezscheme curl gcc git make

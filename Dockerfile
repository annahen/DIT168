# docker run --rm -ti -v $PWD:/opt/sources ubuntu:16.04 /bin/sh
FROM ubuntu:16.04 AS builder
MAINTAINER Julian Bock gusbocju@student.gu.se
RUN apt-get update && \
    apt-get install build-essential cmake -y && \
    apt-get install software-properties-common -y && \
    apt-add-repository ppa:chrberger/libcluon && \
    apt-get update && \
    apt-get install libcluon -y
ADD . /opt/sources
WORKDIR /opt/sources
RUN cd /opt/sources && \
    mkdir build && \
    cd build && \
    cmake -D CMAKE_BUILD_TYPE=Release .. && \
    make && \
    cd src/ && \
    cd ps4controller/demo && \
    cp MARBLE.PS4Controller.Demo /tmp

# Deploy.
FROM ubuntu:16.04
MAINTAINER Julian Bock gusbocju@student.gu.se
RUN apt-get update && \
    apt-get install software-properties-common -y && \
    apt-add-repository ppa:chrberger/libcluon && \
    apt-get update && \
    apt-get install libcluon -y && \
    mkdir /opt
WORKDIR /opt
COPY --from=builder /tmp/MARBLE.PS4Controller.Demo .
CMD ["/bin/sh"]

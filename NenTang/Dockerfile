FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y \
      sysbench \
      fio \
      iperf3 \
      iputils-ping \
      iproute2 \
      net-tools \
      openssh-client \
      ca-certificates && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]


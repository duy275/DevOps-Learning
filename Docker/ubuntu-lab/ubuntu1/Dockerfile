FROM ubuntu:22.04 
#dùng ubuntu base

#cài nginx
RUN apt-get update && \
    apt-get install -y nginx openssh-server

ENV DEBIAN_FRONTEND=noninteractive

EXPOSE 80

COPY ./entrypoint.sh /usr/local/bin/
CMD ["/usr/local/bin/entrypoint.sh"] 
#chạy nginx ở foreground (daemon off)

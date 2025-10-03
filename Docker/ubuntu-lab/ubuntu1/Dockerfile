FROM ubuntu:22.04 
#dùng ubuntu base

#cài nginx
RUN apt-get update && \
    apt-get install -y nginx

ENV DEBIAN_FRONTEND=noninteractive

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"] 
#chạy nginx ở foreground (daemon off)

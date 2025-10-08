FROM ubuntu:22.04 
#dùng ubuntu base

#cài nginx
RUN apt-get update && \
    apt-get install -y nginx cron openssh-server && \
    ssh-keygen -A &&\
    useradd -m -s /bin/bash ubuntu1 && \
    mkdir /home/ubuntu1/.ssh && \
    chown ubuntu1:ubuntu1 /home/ubuntu1/.ssh && \
    chmod 700 /home/ubuntu1/.ssh && \
    ssh-keygen -t rsa -b 4096 -f /home/ubuntu1/.ssh/ubuntu1_key

RUN mkdir /tmp/share
RUN cp /home/ubuntu1/.ssh/ubuntu1_key.pub /tmp/share/
ENV DEBIAN_FRONTEND=noninteractive

EXPOSE 80
EXPOSE 22

COPY ./backup/backup.sh /usr/local/bin/backup.sh
COPY ./entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/backup.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN echo "0 0 * * * root /usr/local/bin/backup.sh" >> /etc/crontab
CMD ["/usr/local/bin/entrypoint.sh"]
#chạy nginx ở foreground (daemon off)

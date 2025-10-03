FROM ubuntu:22.04 
#dùng ubuntu base

#cài nginx
RUN apt-get update && \
    apt-get install -y nginx cron

ENV DEBIAN_FRONTEND=noninteractive

EXPOSE 80

COPY ./backup/backup.sh /usr/local/bin/backup.sh
COPY ./entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/backup.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN echo "0 0 * * * root /usr/local/bin/backup.sh" >> /etc/crontab
CMD ["/usr/local/bin/entrypoint.sh"]
#chạy nginx ở foreground (daemon off)

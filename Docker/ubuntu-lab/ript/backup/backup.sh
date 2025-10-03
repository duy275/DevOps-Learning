#!/bin/bash
DATE=$(date +%F)
BACKUP_DIR="/backup"
SRC_DIR="/var/www/html"

mkdir -p "$BACKUP_DIR"

tar -czf $BACKUP_DIR/backup-$DATE.tar.gz -C $SRC_DIR .

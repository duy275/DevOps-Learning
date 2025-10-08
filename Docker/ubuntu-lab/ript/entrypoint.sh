#!/bin/bash
service cron start
servide ssh start
exec nginx -g "daemon off;"

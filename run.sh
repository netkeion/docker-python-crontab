#!/bin/sh

cat /myapp/crontab > /var/spool/cron/crontabs/root
chmod 600 /var/spool/cron/crontabs/root
chown root.crontab /var/spool/cron/crontabs/root
cron -f
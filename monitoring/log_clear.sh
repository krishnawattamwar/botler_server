#!/bin/bash


/usr/local/bin/pm2 flush >> /var/log/pm2_log/pm2_cleanup/pm2_flush_Daily_$(date +"%Y_%m_%d-%I_%M_%p").log && /usr/local/bin/pm2 restart all > /var/log/pm2_log/pm2_cleanup/pm2_restart_Daily_$(date +"%Y_%m_%d-%I_%M_%p").log

sleep 10

df -h > /var/log/pm2_log/pm2_cleanup/disk_free_Daily_$(date +"%Y_%m_%d-%I_%M_%p").log

sleep 10

/usr/local/bin/pm2 list > /var/log/pm2_log/pm2_cleanup/pm2_list_Daily_$(date +"%Y_%m_%d-%I_%M_%p").log

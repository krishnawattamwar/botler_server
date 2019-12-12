#! /bin/bash


pm2 flush && pm2 restart all > /home/node/monitoring_logs/pm2_flush_$(date +"%Y_%m_%d-%I_%M_%p").log
sleep 10
df -h > /home/node/monitoring_logs/disk_free_$(date +"%Y_%m_%d-%I_%M_%p").log
sleep 10
pm2 list > /home/node/monitoring_logs/pm2_list_$(date +"%Y_%m_%d-%I_%M_%p").log

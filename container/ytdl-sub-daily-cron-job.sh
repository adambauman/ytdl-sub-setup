#!/bin/bash

# Add this script to the root crontab:
# 1. Copy this script to etc, Ubuntu example: '/etc/cron.daily/ytdl-sub'
# 2. Run 'sudo chmod +x /etc/cron.daily/ytdl-sub'
# 3. Run 'sudo crontab -e'
# 4. Add the cron job, example that runs daily at 2am:
# 0    2    *    *    *    /etc/cron.daily/ytdl-sub

echo "ytdl-sub: Running daily cron job..."
sudo docker exec ytdl-sub ytdl-sub --config /config/ytdl-sub-configs/config.yaml sub /config/ytdl-sub-configs/subscriptions.yaml
echo "ytdl-sub: Finished daily cron job."

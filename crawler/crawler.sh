#!/bin/bash
python /app/weibo-crawler/weibo.py -l /mnt/crawler/log -d /mnt/crawler/data -c /mnt/crawler/config/config.json $*

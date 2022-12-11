#!/bin/bash
python /app/weibo-crawler/hugo_generator.py   \
       -l /mnt/hugo/log               \
       -d /mnt/crawler/data                   \
       -u /mnt/crawler/config/weibolist.xlsx  \
       -p /app/weibo-site/content/post      \
       -m /app/weibo-site/static    \
       $*

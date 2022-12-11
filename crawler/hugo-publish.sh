#!/bin/bash
cd /app/weibo-site
hugo --gc --minify $*

ARG SINCE_DAY=2
ARG PAGE_NUM=10

FROM python:3.8-slim

RUN apt-get update
RUN apt-get -y install git curl


RUN mkdir -p /mnt/crawler/logs
RUN mkdir -p /mnt/hugo/logs
RUN mkdir -p /mnt/crawler/data
RUN mkdir -p /mnt/crawler/config
RUN mkdir -p /app
WORKDIR /app
RUN git clone https://github.com/mtsxh/weibo-crawler.git
RUN git clone https://github.com/mtsxh/weibo-site.git

RUN curl -L https://github.com/gohugoio/hugo/releases/download/v0.108.0/hugo_0.108.0_linux-amd64.deb -o hugo.deb
RUN apt install ./hugo.deb
RUN rm ./hugo.deb

WORKDIR /app/weibo-crawler
RUN pip install -r requirements.txt

WORKDIR /app/weibo-site
RUN rmdir themes/hugo-clarity
RUN git submodule add -f https://github.com/mtsxh/hugo-clarity.git themes/hugo-clarity

WORKDIR /app
COPY run.sh /app/run.sh
COPY crawler.sh /app/crawler.sh
COPY hugo-generator.sh /app/hugo-generator.sh
COPY hugo-publish.sh /app/hugo-publish.sh
RUN chmod +x *.sh

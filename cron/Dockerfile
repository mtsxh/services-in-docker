FROM alpine:3.16

RUN apk update && \
    apk add --no-cache docker-cli docker-cli-compose

COPY renew_certs.sh /etc/periodic/daily/renew_certs

RUN chmod +x /etc/periodic/daily/renew_certs

COPY run_crawler.sh /etc/periodic/daily/crawler

RUN chmod +x /etc/periodic/daily/crawler

WORKDIR /workdir

CMD ["crond", "-f", "-l", "0"]

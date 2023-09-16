FROM alpine:3.18

COPY entrypoint.sh /entrypoint.sh

RUN apk update && \
    apk add --no-cache openssh-client rsync

ENTRYPOINT ["/entrypoint.sh"]

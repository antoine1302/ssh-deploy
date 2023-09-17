FROM alpine:3.18

COPY entrypoint.sh /entrypoint.sh

RUN apk update && \
    apk add --no-cache bash openssh-client rsync && \
    mkdir -p ~/.ssh

ENTRYPOINT ["/entrypoint.sh"]

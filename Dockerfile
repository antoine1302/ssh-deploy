FROM alpine:3.18

COPY entrypoint.sh /entrypoint.sh

RUN apk update && \
    apk add --no-cache bash openssh-client rsync && \
    addgroup deploy && \
    adduser deploy -s /bin/bash -D -G deploy

USER deploy

ENTRYPOINT ["/entrypoint.sh"]

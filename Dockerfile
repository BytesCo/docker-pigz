FROM docker.io/library/alpine:3.20.0

LABEL maintainer="Aaron Silber <aaron@bytes.co>"

RUN set -eux; \
    apk add --no-cache pigz;

VOLUME ["/data"]
WORKDIR /data

ENTRYPOINT ["pigz"]

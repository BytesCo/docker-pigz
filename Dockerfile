FROM docker.io/library/alpine:3.14

LABEL maintainer="Aaron Silber <aaron@bytes.co>"

RUN set -eux; \
    apk add --no-cache pigz; \
    rm -rf /var/cache/apk/*;

VOLUME ["/data"]
WORKDIR /data

ENTRYPOINT ["pigz"]

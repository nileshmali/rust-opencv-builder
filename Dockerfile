FROM rust:1.64-alpine3.16

RUN apk update \
  && apk add --no-cache ca-certificates tzdata opencv-dev \
  && rm -rf /var/cache/apk/*
# Start from base node alpine image
FROM mhart/alpine-node:6

# install imagemagick
RUN apk add --no-cache imagemagick

# install deps for phantom
RUN apk add --no-cache curl && curl -Ls "https://github.com/dustinblackman/phantomized/releases/download/2.1.1/dockerized-phantomjs.tar.gz" | tar xz -C /

ENTRYPOINT ["/bin/sh", "-c"]

# Start from base node alpine image
FROM mhart/alpine-node:6

# install imagemagick
RUN apk add --no-cache imagemagick

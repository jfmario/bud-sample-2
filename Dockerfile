
FROM golang:1.18.4-buster AS build

# install node & npm
RUN apt-get update
RUN apt-get install -y curl g++
RUN curl sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install -y nodejs

# install bud
RUN curl -sf https://raw.githubusercontent.com/livebud/bud/main/install.sh | sh

# build your app
COPY . /app
WORKDIR /app

RUN npm i
RUN bud build

FROM golang:1.18.4-buster

COPY --from=build /app /app

WORKDIR /app

ENV LOG_LEVEL=warn

EXPOSE 80

ENTRYPOINT ./bud/app --listen 0.0.0.0:80 --log $LOG_LEVEL

# docker run -it -e LOG_LEVEL=debug -p 8080:80 -<image-name>
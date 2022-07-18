
FROM golang:1.18.4-buster

# install node & npm
RUN apt-get update
RUN apt-get install -y curl
RUN curl sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install -y nodejs

RUN curl -sf https://raw.githubusercontent.com/livebud/bud/main/install.sh | sh

# build your app
COPY . /app
WORKDIR /app

# will not work if you have the broken relative path in go.mod
RUN bud build

EXPOSE 3000
EXPOSE 35729

ENTRYPOINT ./bud/app --listen 0.0.0.0:3000 --log debug

# docker run -it -p 3000:3000 -p 35729:35729 <image-name>
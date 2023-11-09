FROM node:18-alpine
LABEL MAINTAINER="Armin"


RUN apk update
RUN apk add --no-cache tzdata bash git openssh curl

ENV TZ Rurope/Vienna

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build
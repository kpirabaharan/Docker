ARG NODE_VERSION=latest

FROM node:${NODE_VERSION}

ENV NODE_ENV development

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN npm i

COPY . .

RUN apt-get update && apt-get install -y net-tools

EXPOSE 5173

CMD npm run dev

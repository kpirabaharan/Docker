ARG NODE_VERSION=latest

FROM node:${NODE_VERSION}

ENV NODE_ENV development

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN npm i

COPY . .

EXPOSE 8000

CMD npm start

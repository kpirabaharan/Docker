ARG NODE_VERSION=21

FROM node:${NODE_VERSION}-alpine

ENV NODE_ENV development

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN npm i

COPY . .

EXPOSE 5173

CMD npm run dev

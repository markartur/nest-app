FROM node:14-alpine

WORKDIR /app
ADD package.json /app/package.json
RUN npm config set registry http://registry.npmjs.org
RUN npm install

ADD . /app

RUN npm run build
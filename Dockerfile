FROM node:latest

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci
COPY ./ ./

RUN npm i -g pm2
CMD [ "npm", "run", "dev" ]

FROM node:20-alpine

WORKDIR /app

COPY package*.json .

RUN npm i 

COPY . .

RUN npm install pm2 -g

USER root

RUN chown -R node:node /app

USER node

EXPOSE 3000

CMD ["pm2-runtime", "start", "index.js"]
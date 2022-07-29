FROM node:lts-buster


COPY package.json .

RUN npm install && npm install pm2 -g 

COPY . .

EXPOSE 5000

CMD ["node", "backend.js"]

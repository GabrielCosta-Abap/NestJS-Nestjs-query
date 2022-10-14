FROM node:16-alpine As development

WORKDIR /src/app

COPY package*.json ./
COPY package-lock.json ./

RUN npm install --force

COPY . .

CMD npm run start:dev
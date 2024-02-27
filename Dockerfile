FROM node:latest

WORKDIR /playwright

COPY package*.json ./

RUN apt-get update && apt-get install openjdk-19-jre

RUN npm install

RUN npx playwright install --with-deps

RUN npm install -g allure-commandline --save-dev

COPY . .

CMD npx playwright test
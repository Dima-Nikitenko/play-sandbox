FROM node:latest

WORKDIR /playwright

COPY package*.json ./

RUN npm install

RUN npx playwright install --with-deps

RUN npm install -g allure-commandline --save-dev

COPY . .

CMD npx playwright test
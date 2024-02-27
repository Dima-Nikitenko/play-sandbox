FROM node:latest

WORKDIR /playwright

VOLUME (pwd)/allure-results:/playwright/allure-results

COPY package*.json ./

RUN npm install

RUN npx playwright install --with-deps

RUN npm install -g allure-commandline --save-dev

COPY . .

CMD npx playwright test
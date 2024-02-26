FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN 

RUN npm install

RUN npx playwright install --with-deps

COPY . .

CMD npx playwright test && allure generate --clean allure-results
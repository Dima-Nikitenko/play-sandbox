FROM node:latest

WORKDIR /playwright

COPY package*.json ./

RUN 

RUN npm install

RUN npx playwright install --with-deps

COPY . .

CMD npx playwright test
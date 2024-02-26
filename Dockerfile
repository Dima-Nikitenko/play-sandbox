FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npx playwright install

COPY . .

EXPOSE 3000

CMD [ "npx", "playwright", "test" ]
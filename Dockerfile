FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install \ npx playwright install --with-deps

COPY . .

EXPOSE 3000

CMD [ "npx", "playwright", "test" ]
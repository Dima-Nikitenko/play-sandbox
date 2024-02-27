FROM node:latest

WORKDIR /playwright

COPY package*.json ./

RUN apt-get update && apt-get install -y openjdk-11-jdk

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

ENV PATH $PATH:${JAVA_HOME}/bin

RUN npm install

RUN npx playwright install --with-deps

RUN npm install -g allure-commandline --save-dev

COPY . .

CMD npx playwright test
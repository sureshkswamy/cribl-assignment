FROM node:latest

ARG MODE
ENV RUN_MODE="./${MODE}"
RUN echo "ENV MY MODE :: ${RUN_MODE}"

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

CMD node app.js $RUN_MODE

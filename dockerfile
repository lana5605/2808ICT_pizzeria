FROM node:18-alpine3.17

ARG ROOT=/opt/app

ENV MONGODB_URI mongodb://app_user:app_password@mongodb:27017/admin
ENV SECRET app_secret
ENV PORT 4500

RUN mkdir -p $ROOT
WORKDIR $ROOT
COPY ./package.json ./package-lock.json $ROOT

RUN npm install
COPY . $ROOT

EXPOSE 4500

ENTRYPOINT [ "npm", "start"]

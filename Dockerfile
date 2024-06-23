FROM node:14

WORKDIR /app

COPY . .

RUN yarn install --registry=https://mirrors.cloud.tencent.com/npm/

EXPOSE 3000

CMD ["yarn", "start"]

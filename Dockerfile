FROM node:16

WORKDIR /app

COPY . .

RUN yarn config set registry https://mirrors.cloud.tencent.com/npm/
RUN yarn install

EXPOSE 3000

CMD ["yarn", "start"]

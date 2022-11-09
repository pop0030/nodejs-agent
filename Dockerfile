ARG NODE_VERSION

FROM node:${NODE_VERSION}-alpine

RUN apk --update --no-cache add python3 openssh

RUN npm install -g pnpm

EXPOSE 3000

WORKDIR /app

CMD [ "node" ]

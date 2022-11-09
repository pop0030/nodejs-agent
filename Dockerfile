ARG NODE_VERSION

FROM bitnami/node:${NODE_VERSION}

RUN apt-get update

RUN apt-get install -y -q --no-install-recommends openssh-client

RUN rm -rf /var/lib/apt/lists/*

RUN npm install -g pnpm

EXPOSE 3000

WORKDIR /app

CMD [ "node" ]

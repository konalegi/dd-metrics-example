ARG NODE_VERSION=16.14.0

############################
FROM node:${NODE_VERSION}-buster-slim as base


WORKDIR /app

RUN apt-get update -qq && \
    apt-get install -qq -y --fix-missing curl

COPY --chown=node:node package.json yarn.lock ./

CMD ["yarn", "dev"]

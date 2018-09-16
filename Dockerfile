FROM circleci/node:8
MAINTAINER kalote

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y default-jre

RUN npm install -g serverless@^1.0.0 mocha babel-cli

USER circleci

CMD [ "node" ]

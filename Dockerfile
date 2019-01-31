FROM circleci/node:8
MAINTAINER juvaly

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y default-jre \
    && curl -O https://bootstrap.pypa.io/get-pip.py \
    && python get-pip.py --user \
    && /var/app/bin/pip install awscli --upgrade --user

RUN npm install -g serverless mocha babel-cli

USER circleci

CMD [ "node" ]

FROM ubuntu:24.04

ARG NODE_VERSION=12.22.12

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        ca-certificates curl git xz-utils \
    && rm -rf /var/lib/apt/lists/* \
    && curl -fsSL "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz" \
       | tar -xJ -C /usr/local --strip-components=1 --no-same-owner \
    && npm install -g yarn@1.22.22

USER ubuntu

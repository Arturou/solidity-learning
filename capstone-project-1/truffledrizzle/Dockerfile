FROM node:10

#update and upgrade debian
RUN apt update -y && apt upgrade -y
#install build essentials
RUN apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
#install python
RUN apt-get install -y python && npm install -g node-gyp && npm install -g node-gyp-build

# Install Truffle
RUN npm install -g truffle
RUN npm install truffle-hdwallet-provider
RUN npm install openzeppelin-solidity
RUN npm config set bin-links false

# Move Contract Files
COPY contracts ./contracts
COPY migrations ./migrations
COPY test ./test
COPY truffle-config.js ./truffle-config.js

# Move React Files
COPY client/src ./client/src
COPY client/public ./client/public
COPY client/package.json ./client/package.json
COPY client/package-lock.json ./client/package-lock.json

# Clean Install NPM Dependencies
RUN cd client && npm ci





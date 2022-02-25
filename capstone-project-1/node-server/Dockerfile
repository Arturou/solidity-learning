FROM node:16

#update and upgrade debian
RUN apt update -y && apt upgrade -y
#install build essentials
RUN apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
#install python
RUN apt-get install -y python && npm install -g node-gyp && npm install -g node-gyp-build

# Clean Install NPM Dependencies
RUN cd client && npm ci

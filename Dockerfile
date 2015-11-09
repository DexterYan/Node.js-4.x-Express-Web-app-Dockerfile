FROM ubuntu:latest

# make sure apt is up to date 
RUN apt-get update

# install git git-core curl (add -y to not wait for the user to confirm the installation)
RUN apt-get install -y git git-core curl

# install nodejs 4.x

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

RUN apt-get install -y nodejs

# Bundle app source
COPY . /
# Install app dependencies
RUN cd /src; npm install

EXPOSE  8080
CMD ["node", "/src/index.js"]
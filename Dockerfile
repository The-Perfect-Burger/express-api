FROM node:argon

# Create app directory
RUN mkdir -p /src
WORKDIR /src

# Install app dependencies
COPY package.json /src/
RUN npm install
RUN npm install nodemon -g

# Bundle app source
COPY ./app /src/app

EXPOSE 8080
CMD [ "nodemon", "app/index.js" ]
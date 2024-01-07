ARG NODE_VERSION=latest

FROM node:${NODE_VERSION}

# Use development node environment by default.
ENV NODE_ENV development

USER root

# Create the application directory.
RUN mkdir /usr/src/app

# Set the working directory.
WORKDIR /usr/src/app

# copy package.json to the working directory
COPY package.json /usr/src/app

# install dependencies
RUN npm i

# Change the ownership of the /usr/src/app directory back to the node user.
RUN chown -R node:node /usr/src/app
USER node

# Expose the port that the application listens on.
EXPOSE 5173

# Run the application.
CMD npm run dev

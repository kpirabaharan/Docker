ARG NODE_VERSION=latest

FROM node:${NODE_VERSION}

USER root

RUN mkdir /home/app && chown -R node:node /home/app

# Use production node environment by default.
ENV NODE_ENV development

# Run the application as a non-root user.
USER node

WORKDIR /home/app

# copy package.json and package-lock.json to the working directory
COPY package*.json ./

# install dependencies
RUN npm install

# Copy the rest of the source files into the image.
COPY . .

# Expose the port that the application listens on.
EXPOSE 5173

# Run the application.
CMD npm run dev

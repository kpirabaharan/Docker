# Set Base Image
FROM node:latest

# Create non-root user
# Create a group called "app" and Create a user called "app" and add it to the "app" group
RUN groupadd -r app && useradd -r -g app app

# Create the /app directory and change its ownership to the app user
USER root
RUN mkdir /home/app && chown -R app:app /home/app

# set the user to run the app
USER app

# set the working directory to /home/app
WORKDIR /home/app

# copy package.json and package-lock.json to the working directory
COPY package*.json ./

# install dependencies
RUN npm install

# copy the rest of the files to the working directory
COPY . .

# expose port 5173 to tell Docker that the container listens on the specified network ports at runtime
EXPOSE 5173

# command to run the app
CMD npm run dev

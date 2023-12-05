FROM node:21-alpine

# Copy source code to container
COPY package.json /app/package.json
COPY index.js /app/index.js

# Set working directory
WORKDIR /app

# Install dependencies
RUN npm install express

# Only one CMD command reserved for last command
CMD ["node", "index.js"]

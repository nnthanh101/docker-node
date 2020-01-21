# Base Image (Node v12) and creates a new container for it
FROM node:12.4-alpinex
LABEL maintainer="nnthanh101@gmail.com"

RUN mkdir /app
WORKDIR /app

# Install dependencies
COPY package*.json ./
# RUN npm install --production
RUN npm ci --only=production

# Copy source files from host computer to the container
COPY . .

# Build the app
RUN npm run build

# Specify port app runs on
EXPOSE 3000

# Run the app
CMD [ "npm", "start" ]
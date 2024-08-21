# Use Node.js LTS version as the base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /Docker-intro

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install all dependencies
RUN npm install

# Copy the entire project into the container
COPY . .

# Install TypeScript globally
RUN npm install -g typescript

# Compile TypeScript to JavaScript
RUN tsc

# Expose the port that the app will run on
EXPOSE 3000

# Start the server
CMD ["node", "dist/server.js"]

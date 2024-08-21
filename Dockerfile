# Use Node.js LTS version as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the entire project into the container
COPY . .

# Install TypeScript and compile
RUN npm install -g typescript && tsc

# Expose the port that the app will run on (same as in the .env file)
EXPOSE ${PORT:-3000}

# Start the server
CMD ["node", "dist/server.js"]

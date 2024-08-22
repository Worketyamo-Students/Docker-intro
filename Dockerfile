# Stage 1: Build
FROM node:20-alpine AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package.json package-lock.json ./

# Install the dependencies
RUN npm install

# Copy the entire source code into the container
COPY ./src ./src

# Copy the tsconfig.json file
COPY tsconfig.json ./

# Install TypeScript globally
RUN npm install -g typescript

# Compile the TypeScript code to JavaScript
RUN npm run build

# Stage 2: Run
FROM node:20-alpine

# Set the working directory for the final container
WORKDIR /app

# Copy the compiled JavaScript code from the build stage
COPY --from=build /app/dist ./dist

# Copy the package files again
COPY package.json package-lock.json ./

# Copy the .env file into the container
COPY .env ./

# Install only production dependencies
RUN npm install --only=production

# Expose the port the app will run on
EXPOSE ${PORT}

#Providing an entry point
ENTRYPOINT [ "npm","run" ]
# Command to run the server
CMD ["dev"]


# Dockerized TypeScript Node.js API

This project is a basic Express API written in TypeScript and containerized using Docker. It demonstrates the setup of a multi-stage Dockerfile for an optimized build and runtime environment.

## Features

- Node.js & Express: A basic API using Express.js.
- TypeScript: Fully typed with TypeScript for better development experience.
- Dockerized: Multi-stage Dockerfile to ensure efficient production images.
- API Testing: Easily testable using Postman.

## Prerequisites
- Docker: Ensure Docker is installed on your machine. Install Docker.
- Postman (Optional): For API testing.

## Installation of dependencies

```bash
  npm install
```
## Getting Started
1. Build the Docker Image

```bash
docker build -t your_prject_name .
```
2. Run the Docker Container
```bash
a. Without considering the .env file
docker run -p 3000:3000 your_project_name
b. With the .env file into consideration
docker run --env-file .env -p 3000:3000 your project name
```
3. Test the API
You can test the API by sending a POST request to:
```bash
http://localhost:3000/greetings
```
- Method : "POST"
- Expected Response
```bash
{
  "msg": "Hello World"
}
```

## Author

- [@Briso10-dev](https://github.com/Briso10-dev)

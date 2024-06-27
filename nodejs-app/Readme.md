# Node.js Application

This is a Node.js application configured to run with PM2 in a Docker container.

## Prerequisites

- Docker
- Node.js
- npm

## Getting Started

Follow these instructions to get the application up and running.

### Build the Docker Image

1. Navigate to the project directory:
    ```sh
    cd <project_directory>
    ```

2. Build the Docker image:
    ```sh
    docker build -t node-app .
    ```

### Run the Docker Container

1. Run the container:
    ```sh
    docker run -p 3000:3000 node-app:latest
    ```

The application will be available at `http://localhost:3000`.

## Additional Information

- **PM2**: PM2 is a production process manager for Node.js applications that helps keep your application running, logs, monitoring, and more.
- **Alpine Linux**: A security-oriented, lightweight Linux distribution that's ideal for Docker containers due to its small size and simplicity.

## Acknowledgements

- [Node.js](https://nodejs.org/)
- [PM2](https://pm2.keymetrics.io/)
- [Docker](https://www.docker.com/)

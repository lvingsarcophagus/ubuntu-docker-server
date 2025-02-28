# Ubuntu Docker Server

This project provides a simple setup for launching an Ubuntu server using Docker. It includes all necessary files to build and run the server in a containerized environment.

## Project Structure

```
ubuntu-docker-server
├── src
│   └── launch.sh
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
└── README.md
```

## Getting Started

To get started with the Ubuntu Docker server, follow these steps:

### Prerequisites

- Ensure you have Docker installed on your machine. You can download it from [Docker's official website](https://www.docker.com/get-started).
- Optionally, install Docker Compose if you plan to use the `docker-compose.yml` file.

### Building the Docker Image

To build the Docker image for the Ubuntu server, run the following command in the project root directory:

```
docker build -t ubuntu-server .
```

### Running the Docker Container

You can run the Docker container using the following command:

```
docker run -d -p 80:80 ubuntu-server
```

This command will start the Ubuntu server in detached mode and map port 80 of the container to port 80 on your host.

### Using Docker Compose

If you prefer to use Docker Compose, you can start the services defined in `docker-compose.yml` with the following command:

```
docker-compose up -d
```

This will launch the Ubuntu server along with any other services defined in the `docker-compose.yml` file.

### Stopping the Server

To stop the running container, you can use:

```
docker stop <container_id>
```

Or if you used Docker Compose:

```
docker-compose down
```

### Additional Information

For more details on how to customize the server or add additional features, refer to the `Dockerfile` and `src/launch.sh` files.
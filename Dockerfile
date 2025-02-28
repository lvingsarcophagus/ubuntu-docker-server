FROM ubuntu:latest

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    curl \
    vim \
    net-tools \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the launch script into the container
COPY src/launch.sh .

# Make the launch script executable
RUN chmod +x launch.sh

# Command to run the launch script
CMD ["./launch.sh"]
# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Install Git
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY app /app

# Run the Python script
CMD ["python", "main.py"]

# Use a simple base image (e.g., Alpine)
FROM alpine:latest

# Add a simple text file
RUN echo "Hello from Docker!" > /hello.txt

# Set the working directory
WORKDIR /

# Command to run when the container starts
CMD ["cat", "/hello.txt"]

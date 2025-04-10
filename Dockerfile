# Use a lightweight base image
FROM alpine:latest

# Install bash 
RUN apk add --no-cache bash

# Set the working directory
WORKDIR /app

# Copy the test script into the container
COPY run-tests.sh .

# Make the script executable
RUN chmod +x run-tests.sh

#This runs the script when the container is started
CMD ["./run-tests.sh"]

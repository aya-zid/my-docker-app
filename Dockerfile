# Step 1: Use a base image
FROM nginx:alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Step 3: Copy custom content (optional, only if you want to add custom web content)
COPY ./web-content/index.html ./index.html

# Step 4: Copy the run-tests.sh script (optional, only if you want to run tests in the pipeline)
# Ensure this file exists in your project directory and is executable
COPY run-tests.sh /usr/local/bin/run-tests.sh

# Make sure the script is executable
RUN chmod +x /usr/local/bin/run-tests.sh

# Step 5: Expose the port the app will be accessible on
EXPOSE 80

# Step 6: Define the default command for the container (optional for testing purposes)
# If you're not using a test script, you can omit or modify this
CMD ["nginx", "-g", "daemon off;"]

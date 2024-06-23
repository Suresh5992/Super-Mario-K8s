# Use an appropriate base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy existing package*.json files
COPY package*.json ./

# If you have new package*.json files in a subdirectory 'new-packages'
# COPY new-packages/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Specify the command to run your application
CMD [ "node", "app.js" ]

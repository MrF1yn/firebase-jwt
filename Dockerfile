# Use the official Node.js image as the base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./
COPY . .
# Install the dependencies
RUN npm install

# Copy the rest of the application code


# Expose the port the app runs on
EXPOSE 13128

# Command to run the application
CMD ["npm", "start"]
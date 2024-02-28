# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the app source code
COPY . .

# Expose the port on which the app will run
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]

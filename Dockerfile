# Node.js runtime
FROM node:carbon

# Set the working directory in the container
# We will monitor live reload changes in this directory.
WORKDIR /hopcloud-gateway

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the project files to the container
COPY . .

# Expose the port that your API gateway listens on
EXPOSE 8080

# Start the API gateway
CMD ["npx","nodemon", "start"]
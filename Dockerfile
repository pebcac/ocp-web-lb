FROM node:latest

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Expose the port on which the Node.js app will run
EXPOSE 8080

# Start the Node.js app
CMD ["node", "app.js"]
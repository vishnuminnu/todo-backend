# backend/Dockerfile

# Use official Node.js image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source files
COPY . .

# Expose the app port
EXPOSE 5000

# Start the application
CMD ["node", "index.js"]
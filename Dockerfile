# Use official Node.js image from Docker Hub
FROM node:18-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy only the package.json files first (for cache optimization)
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy rest of the application files
COPY . .

# Expose the port the Node.js app runs on
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]

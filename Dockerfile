# Use Node.js official image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy dependency files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]


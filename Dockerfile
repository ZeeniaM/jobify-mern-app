# Base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy backend package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of backend + frontend source
COPY . .

# Expose backend port
EXPOSE 5000

# Start backend
CMD ["node", "server.js"]

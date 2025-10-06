# Use official Node.js image as base
FROM node:22

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Build Vue.js app (assuming in /client)
RUN npm run build

# Expose port (adjust if needed)
EXPOSE 5173

# Start the app
CMD ["npm", "run", "dev"]
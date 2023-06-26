# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install frontend dependencies
RUN npm install

# Copy the entire frontend codebase to the working directory
COPY . .

# Build the React app for production
RUN npm run build

# Expose the frontend server port (replace 3000 with your actual frontend port)
EXPOSE 3000

# Start the frontend server
CMD ["npm", "start"]

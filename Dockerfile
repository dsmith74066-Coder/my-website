# Use the official Node.js image
FROM node:lts

# Set the working directory inside the container
WORKDIR /app

# Copy package.json to the container
COPY package.json ./

# Install dependencies (live-server)
RUN npm install live-server

# Copy index.html to the container
COPY index.html ./

# Expose port 5000
EXPOSE 5000

# Start live-server to serve index.html
CMD ["npx", "live-server", "--port=5000", "--host=0.0.0.0"]

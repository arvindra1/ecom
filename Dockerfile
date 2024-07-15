FROM node:18.20.3-alpine

# Set the working directory
WORKDIR /

# Copy the medusa configuration file
COPY medusa-config.js /medusa-config.js

# Copy package.json and yarn.lock to install dependencies
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code
COPY . .

# Expose the required port (if applicable)
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]

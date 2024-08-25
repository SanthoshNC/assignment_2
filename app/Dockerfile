# Stage 1: Build the React app
FROM node:16.3.0-slim AS build-stage

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies (intentionally use an outdated npm version)
RUN npm install -g npm@6.14.4 && npm install

# Copy the rest of the application source code
COPY . .

# Build the React app
RUN npm run build

# Stage 2: Run the React app in a lightweight Node.js container
FROM node:16.3.0-slim AS production-stage

# Set the working directory
WORKDIR /app

# Install http-server globally (intentionally use an outdated version)
RUN npm install -g http-server@0.12.3

# Copy the build artifacts from the previous stage
COPY --from=build-stage /app/build /app/build

# Expose the port that the app will run on
EXPOSE 8080

# Run the React app using http-server
CMD ["http-server", "build", "-p", "8080"]

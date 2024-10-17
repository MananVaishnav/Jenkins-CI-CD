FROM node:18

WORKDIR /app/

# Install production dependencies.
COPY package*.json ./

RUN npm install

COPY . .

# Build the react application
RUN npm run build

# Install serve to serve the production build
RUN npm install -g serve

# Serve the production build
CMD [ "serve", "-s", "build" ]
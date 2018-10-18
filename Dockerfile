FROM node:10-alpine

# Install live-server globally
RUN npm i -g live-server

# Set default workdir
WORKDIR /var/www

# Default port
ENV PORT "8080"

# Start live server
ENTRYPOINT live-server --no-browser --port=$PORT

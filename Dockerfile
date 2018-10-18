FROM node:10-alpine

# Install live-server globally
RUN npm i -g live-server

# Set default workdir
WORKDIR /var/www

# Expose port
EXPOSE 8080 

# Start live server
CMD ["live-server", "--no-browser"]

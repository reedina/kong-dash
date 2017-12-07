FROM node:8.6.0-alpine

## Install nodemon in case I have to make changes on the fly
RUN npm install -g kong-dashboard

# Expose a port to allow external access
EXPOSE 8080

# Start kong dashboard application
CMD ["kong-dashboard", "start", "--kong-url", "http://kong-admin:8001"]

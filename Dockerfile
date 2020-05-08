FROM node:10
# FROM node:10-alpine

ENV APP_DIR /var/www/

# Create and define the node_modules's cache directory.
RUN mkdir -p /usr/src/cache
WORKDIR /usr/src/cache

# Install the application's dependencies into the node_modules's cache directory.
COPY ./app/package.json ./
COPY ./app/package-lock.json ./
RUN npm install

# Copy application
WORKDIR ${APP_DIR}
COPY ./app/ ./

# Default exposed port
EXPOSE 8080

# Copy and run entrypoint
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
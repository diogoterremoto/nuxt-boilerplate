#!/bin/sh

# Copy installed dependencies to app folder
cp -r /usr/src/cache/node_modules/. /var/www/node_modules/

# Run NPM script
exec npm run "$@"
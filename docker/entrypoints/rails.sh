#!/bin/sh
set -e

echo "Running migrations..."
bundle exec rails db:create db:migrate || true

echo "Starting Rails..."
cd /app
bundle install
exec "$@"

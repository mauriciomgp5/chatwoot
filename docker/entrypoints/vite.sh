#!/bin/sh
set -x

rm -rf /app/tmp/pids/server.pid
rm -rf /app/tmp/cache/*

gem install bundler -v '2.5.11' || true

pnpm store prune
pnpm install --force

echo "Ready to run Vite development server."

exec "$@"

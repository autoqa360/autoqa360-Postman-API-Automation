#!/bin/bash
set -e

# Always run from script location
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

mkdir -p reports

echo "Node version:"
node -v

echo "NPM version:"
npm -v

echo "Newman version:"
npx newman -v


echo "Running Postman tests..."
npx newman run DemoAPIs.postman_collection.json \
  -e DemoAPIs.postman_environment.json \
  -r htmlextra \
  --reporter-htmlextra-export reports/newman-report.html

echo "Postman execution completed"

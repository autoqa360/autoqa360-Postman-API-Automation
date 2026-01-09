#!/bin/bash
set +e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

mkdir -p reports

echo "=============================="
echo "Node version:"
node -v
echo "NPM version:"
npm -v
echo "Newman version:"
newman -v
echo "=============================="

echo "Running Postman tests (console + HTML report)..."

newman run DemoAPIs.postman_collection.json \
  -e DemoAPIs.postman_environment.json \
  --color on \
  -r cli,htmlextra \
  --reporter-htmlextra-export reports/newman-report.html

NEWMAN_EXIT_CODE=$?

echo "=============================="
echo "Newman exit code: $NEWMAN_EXIT_CODE"
echo "=============================="

# Fail Jenkins build if tests fail
if [ $NEWMAN_EXIT_CODE -ne 0 ]; then
  echo "❌ Some API tests FAILED"
  exit 1
else
  echo "✅ All API tests PASSED"
  exit 0
fi

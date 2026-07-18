#!/bin/sh
cd "$(dirname "$0")"

PORT=5173
URL="http://localhost:${PORT}/"

if ! command -v python3 >/dev/null 2>&1; then
  echo "Python 3 is required to run this local WebXR package."
  exit 1
fi

echo "Starting local server at ${URL}"
echo "Keep this terminal open while using the page."

if command -v xdg-open >/dev/null 2>&1; then
  (sleep 1 && xdg-open "${URL}") &
elif command -v open >/dev/null 2>&1; then
  (sleep 1 && open "${URL}") &
fi

python3 server.py

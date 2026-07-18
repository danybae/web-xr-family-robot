#!/bin/zsh
cd "$(dirname "$0")"

PORT=5173
URL="http://localhost:${PORT}/"

if ! command -v python3 >/dev/null 2>&1; then
  echo "Python 3 is required to run this local WebXR package."
  echo "Install Python 3, then double-click start.command again."
  read "?Press Enter to close."
  exit 1
fi

echo "Starting local server at ${URL}"
echo "Keep this Terminal window open while using the page."

(sleep 1 && open "${URL}") &
python3 server.py

echo
read "?Server stopped. Press Enter to close."

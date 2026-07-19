#!/bin/bash
echo "=============================================="
echo "   ZipLoot DeepSeek WebGPU Local Launcher"
echo "=============================================="

# Check for python to run local server
if command -v python3 &>/dev/null; then
  echo "[ZipLoot] Starting local server via Python3 on Port 8000..."
  python3 -m http.server 8000 &
  SERVER_PID=$!
  sleep 1
  # Launch browser
  if command -v xdg-open &>/dev/null; then
    xdg-open "http://localhost:8000"
  elif command -v open &>/dev/null; then
    open "http://localhost:8000"
  fi
  wait $SERVER_PID
elif command -v npx &>/dev/null; then
  echo "[ZipLoot] Starting local server via npx serve on Port 8000..."
  npx serve -l 8000 &
  SERVER_PID=$!
  sleep 1
  if command -v xdg-open &>/dev/null; then
    xdg-open "http://localhost:8000"
  elif command -v open &>/dev/null; then
    open "http://localhost:8000"
  fi
  wait $SERVER_PID
else
  echo "[ERROR] Python3 or NodeJS (npx) is required to launch local host."
  exit 1
fi

#!/bin/sh
set -e

nohup ollama serve &

sleep 10

echo "Pulling model deepseek-r1:1.5b..."
ollama pull deepseek-r1:1.5b

echo "Stopping background Ollama server..."
pkill ollama

echo "Starting Ollama server with deepseek-r1:1.5b..."
exec ollama serve
#!/bin/sh
set -e

nohup ollama serve &

sleep 10

echo "Pulling model tinyllama..."
ollama pull tinyllama

echo "Stopping background Ollama server..."
pkill ollama

echo "Starting Ollama server with tinyllama..."
exec ollama serve
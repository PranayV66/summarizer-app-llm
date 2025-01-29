#!/bin/sh
set -e

nohup ollama serve &

sleep 10

echo "Pulling model mistral..."
ollama pull mistral

echo "Stopping background Ollama server..."
pkill ollama

echo "Starting Ollama server with mistral..."
exec ollama serve
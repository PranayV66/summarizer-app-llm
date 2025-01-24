#!/bin/sh
set -e

nohup ollama serve &

sleep 10

echo "Pulling model llama3.2..."
ollama pull llama3.2

echo "Stopping background Ollama server..."
pkill ollama

echo "Starting Ollama server with llama3.2..."
exec ollama serve
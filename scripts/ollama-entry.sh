#!/bin/bash

# Start Ollama in the background.
/bin/ollama serve &
# Record Process ID.
pid=$!

# Pause for Ollama to start.
sleep 5

echo "🔴 Retrieve $OLLAMA_MODEL_PULL model..."
ollama pull $OLLAMA_MODEL_PULL
echo "🟢 Done!"

# Wait for Ollama process to finish.
wait $pid
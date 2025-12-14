#!/bin/bash

echo "🚀 Starting Clever Cloud container..."

# Start sshx in background (won't block app)
sshx >/dev/null 2>&1 &

echo "✅ Clever Cloud is UP & RUNNING"

# Start Flask app (foreground process)
python3 app.py

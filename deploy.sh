#!/bin/bash
echo "🚀 Starting Deployment..."

# Step 1: Stop any running app
echo "🧹 Cleaning old deployment..."
pkill -f app.py || echo "No running app found."

# Step 2: Start the new app
echo "⚙️ Starting new app..."
nohup python3 app.py > app.log 2>&1 &

echo "✅ Deployment successful! App restarted."


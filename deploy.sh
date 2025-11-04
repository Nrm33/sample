#!/bin/bash
APP_DIR="/home/nikhil/deployments/sample_app"

echo "🧹 Cleaning old files..."
rm -rf $APP_DIR/*

echo "📦 Copying new files from Jenkins workspace..."
cp -r $WORKSPACE/* $APP_DIR/

echo "🔁 Restarting Python app..."
# Kill old process if running
pkill -f "python3 app.py" || true

# Start app in background
nohup python3 $APP_DIR/app.py > $APP_DIR/app.log 2>&1 &

echo "✅ Deployment complete!"

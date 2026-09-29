#!/bin/bash

echo "======================================"
echo "Delight Tours - Railway Deployment"
echo "======================================"
echo ""

# Check if Railway CLI is installed
if ! command -v railway &> /dev/null
then
    echo "Railway CLI not found. Installing..."
    npm install -g @railway/cli
    echo "✓ Railway CLI installed"
else
    echo "✓ Railway CLI already installed"
fi

echo ""
echo "Step 1: Installing dependencies..."
npm install

echo ""
echo "Step 2: Testing server locally..."
echo "Starting server on port 3000..."
echo "Press Ctrl+C to stop and continue with deployment"
echo ""
npm start &
SERVER_PID=$!
sleep 3

echo ""
echo "Server is running at http://localhost:3000"
echo "Press Enter when ready to deploy to Railway..."
read

# Kill the local server
kill $SERVER_PID

echo ""
echo "Step 3: Logging into Railway..."
railway login

echo ""
echo "Step 4: Initializing Railway project..."
railway init

echo ""
echo "Step 5: Deploying to Railway..."
railway up

echo ""
echo "Step 6: Generating domain..."
railway domain

echo ""
echo "======================================"
echo "✓ Deployment Complete!"
echo "======================================"
echo ""
echo "Your website is now live!"
echo "Run 'railway open' to view your site"
echo ""

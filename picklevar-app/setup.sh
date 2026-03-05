#!/bin/bash

# PickleVAR Setup Script
# Run this after cloning the repo

echo "🏓 PickleVAR Setup"
echo "=================="
echo ""

# Check for Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed!"
    echo "   Please install from: https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js $(node -v) found"

# Check for npm
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed!"
    exit 1
fi

echo "✅ npm $(npm -v) found"

# Install dependencies
echo ""
echo "📦 Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ Failed to install dependencies"
    exit 1
fi

echo "✅ Dependencies installed"

# Ask which platforms to add
echo ""
echo "Which platforms do you want to add?"
echo "  1) Android only"
echo "  2) iOS only (Mac required)"
echo "  3) Both"
echo "  4) Skip for now"
read -p "Enter choice (1-4): " choice

case $choice in
    1)
        echo "📱 Adding Android..."
        npx cap add android
        ;;
    2)
        echo "🍎 Adding iOS..."
        npx cap add ios
        ;;
    3)
        echo "📱 Adding Android..."
        npx cap add android
        echo "🍎 Adding iOS..."
        npx cap add ios
        ;;
    4)
        echo "⏭️  Skipping platform setup"
        ;;
    *)
        echo "Invalid choice, skipping"
        ;;
esac

# Sync
if [ "$choice" != "4" ]; then
    echo ""
    echo "🔄 Syncing web code to native projects..."
    npx cap sync
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "  • Android: npx cap open android"
echo "  • iOS:     npx cap open ios"
echo ""

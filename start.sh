#!/bin/bash

# DASH - Disaster Assistance & Support Hub
# Startup Script

echo "🚀 Starting DASH - Disaster Assistance & Support Hub"
echo "=================================================="

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8+ first."
    exit 1
fi

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 is not installed. Please install pip first."
    exit 1
fi

# Install dependencies
echo "📦 Installing Python dependencies..."
pip3 install -r requirements.txt

# Check if MySQL is running
if ! pgrep -x "mysqld" > /dev/null; then
    echo "⚠️  MySQL is not running. Please start MySQL service first."
    echo "   On macOS: brew services start mysql"
    echo "   On Ubuntu: sudo systemctl start mysql"
    echo "   On Windows: Start MySQL service from Services"
fi

# Setup database
echo "🗄️  Setting up database..."
python3 setup_database.py

# Start the application
echo "🌐 Starting DASH application..."
echo "   Open your browser and go to: http://localhost:5001"
echo ""
echo "Demo Accounts:"
echo "   Admin: username=admin, password=admin123"
echo "   User: username=user1, password=user123"
echo "   Rescue Team: username=rescue1, password=rescue123"
echo ""
echo "Press Ctrl+C to stop the application"
echo "=================================================="

python3 app.py

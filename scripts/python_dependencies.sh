#!/usr/bin/env bash
set -e  # Exit on any error

echo "🔧 Updating package list and installing system dependencies for Pillow..."
sudo apt-get update
sudo apt-get install -y libjpeg-dev zlib1g-dev libpng-dev libfreetype6-dev build-essential python3-dev

echo "🐍 Creating virtual environment..."
virtualenv /home/ubuntu/env

echo "📦 Activating virtual environment and installing Python dependencies..."
source /home/ubuntu/env/bin/activate
pip install --upgrade pip
pip install wheel  # Ensures builds work properly
pip install -r /home/ubuntu/blogprojectdrf/requirements.txt

echo "✅ Python dependencies installed successfully."

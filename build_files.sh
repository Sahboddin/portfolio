#!/bin/bash

echo "Starting the Django build process..."

# Step 1: Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip

# Step 2: Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Step 3: Apply migrations
echo "Applying migrations..."
python manage.py migrate

# Step 4: Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput

# Step 5: Restart server (optional)
echo "Restarting the server (if applicable)..."
# Uncomment the following line if using Gunicorn or another process manager
# sudo systemctl restart gunicorn

echo "Django build process completed!"

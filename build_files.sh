#!/bin/bash

echo "Starting the Django build process..."

# Step 1: Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Step 2: Apply migrations
echo "Applying migrations..."
python manage.py migrate

# Step 3: Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput

# Step 4: Restart server (optional)
echo "Restarting the server (if applicable)..."
# Uncomment the following line if you're using Gunicorn or another process manager
# sudo systemctl restart gunicorn

echo "Django build process completed!"

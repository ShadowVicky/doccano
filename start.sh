#!/bin/bash

# Run migrations
doccano migrate

# Create or update admin user
doccano createuser --username admin --password admin123 --email admin@example.com || true

# Start webserver (this keeps the app running!)
doccano webserver --port 10000


#!/bin/bash

# Initialize DB only on first run
if [ ! -f /data/.init_done ]; then
  doccano init
  doccano createuser --username "$ADMIN_USERNAME" --password "$ADMIN_PASSWORD" --email "$ADMIN_EMAIL"
  touch /data/.init_done
fi

# Start webserver
doccano webserver --port 8000

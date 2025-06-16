FROM n8nio/n8n

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV WEBHOOK_URL=https://n8n-server-ph1v.onrender.com/

# Basic Auth setup
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=kshalom419
ENV N8N_BASIC_AUTH_PASSWORD=Ymgxripper171031

# Optional: Permissions fix
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Ensure the settings directory exists
RUN mkdir -p /home/node/.n8n

# Start n8n
CMD ["n8n"]

FROM n8nio/n8n:latest

# n8n should listen on 0.0.0.0:5678
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http

# your real webhook URL (no double https://)
ENV WEBHOOK_URL=https://n8n-server-ph1v.onrender.com/

# timezone
ENV GENERIC_TIMEZONE=Asia/Kolkata

# (optional) basic auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=kshalom419
ENV N8N_BASIC_AUTH_PASSWORD=Ymgxripper171031

# enforce correct permissions on the settings file
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# persist the home .n8n folder
RUN mkdir -p /home/node/.n8n

# so Render can auto-detect the port
EXPOSE 5678

# let the base image’s ENTRYPOINT pick up the default CMD ["start"]
 CMD ["n8n", "start"])

FROM n8nio/n8n:latest

# —————— n8n Settings ——————
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV GENERIC_TIMEZONE=Asia/Kolkata

# 🔗 Your actual Render URL:
ENV WEBHOOK_URL=https://<your-project-name>.railway.app/

# ———— Basic Auth (optional) ————
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=kshalom419
ENV N8N_BASIC_AUTH_PASSWORD=Ymgxripper171031

# ———— Permissions fix (optional) ————
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Make sure the settings folder exists
RUN mkdir -p /home/node/.n8n

# Tell Docker (and Render) which port we’re listening on
EXPOSE 5678

# **No CMD or ENTRYPOINT** here: we rely on the n8nio/n8n base image defaults

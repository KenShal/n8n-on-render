FROM n8nio/n8n

# Optional: Basic Auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=strongpassword

# Optional: Set timezone
ENV TZ=Asia/Kolkata

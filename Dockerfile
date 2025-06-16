FROM n8nio/n8n

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV WEBHOOK_URL=https://https://n8n-server-ph1v.onrender.com/

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=kshalom419
ENV N8N_BASIC_AUTH_PASSWORD=Ymgxripper171031
RUN mkdir -p /home/node/.n8nAdd commentMore actions

VOLUME /home/node/.n8n

EXPOSE 5678

CMD ["n8n"]
# Optional: Set timezone
ENV TZ=Asia/Kolkata

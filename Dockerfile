FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV GENERIC_TIMEZONE=Asia/Kolkata
ENV WEBHOOK_URL=https://your-service-name.onrender.com/

RUN mkdir -p /home/node/.n8n

VOLUME /home/node/.n8n

EXPOSE 5678

CMD ["n8n"]

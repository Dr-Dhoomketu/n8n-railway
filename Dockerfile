FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://your-subdomain.up.railway.app
ENV N8N_USER_FOLDER=/data

EXPOSE 5678

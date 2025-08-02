FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Replace with your real Railway domain after deploy
ENV WEBHOOK_URL=https://your-subdomain.up.railway.app

EXPOSE 5678

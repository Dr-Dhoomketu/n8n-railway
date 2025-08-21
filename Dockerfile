# Use official n8n image
FROM n8nio/n8n:1.39.1

# Set working directory
WORKDIR /data

# Environment defaults (Railway will override with its ENV)
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV N8N_USER_FOLDER=/data
ENV WEBHOOK_URL=${WEBHOOK_URL}

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]

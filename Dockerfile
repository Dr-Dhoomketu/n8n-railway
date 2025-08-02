FROM node:18-alpine

# Install necessary packages
RUN apk add --no-cache bash curl python3 py3-pip

# Create app directory
WORKDIR /app

# Install n8n
RUN npm install n8n -g

# Expose n8n port
EXPOSE 5678

# Environment variables (override with Railway ENV tab)
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_URL=https://your-subdomain.up.railway.app

# Start n8n
CMD ["n8n"]

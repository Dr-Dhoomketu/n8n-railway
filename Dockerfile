# Use official n8n image
FROM n8nio/n8n:latest

# Switch to root to fix permissions
USER root

# Ensure /data belongs to node user (ignore mkdir, just chown)
RUN chown -R node:node /data || true

# Switch back to node
USER node

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]

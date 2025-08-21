# Use official n8n image
FROM n8nio/n8n

# Create /data and fix permissions for n8n
RUN mkdir -p /data && chown -R node:node /data

# Switch to non-root user (node)
USER node

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]

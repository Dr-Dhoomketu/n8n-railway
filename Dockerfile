FROM n8nio/n8n:latest

# Set the working directory
WORKDIR /data

# Expose n8n port
EXPOSE 5678

# Default command to run n8n
CMD ["n8n"]

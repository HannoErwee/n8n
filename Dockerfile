FROM n8nio/n8n:latest

USER root
# Ensure the data directory exists and is owned by the node user
# (important when Fly.io mounts a fresh volume)
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
EXPOSE 5678

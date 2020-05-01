FROM node:12.16

# Move default node user
RUN usermod -u 50000 node && groupmod -g 50000 node

# Add chromium (for headless testing) and git
RUN apt-get update && apt-get install -y git chromium

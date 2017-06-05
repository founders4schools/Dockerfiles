FROM founders4schools/dockerfiles:py2.7-alpine

# Command lines utils that needs to be in the PATH
RUN pip install coverage codecov fabric flake8

# Install Heroku CLI
RUN wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz && \
  mkdir -p /usr/local/lib /usr/local/bin && \
  tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib && \
  ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

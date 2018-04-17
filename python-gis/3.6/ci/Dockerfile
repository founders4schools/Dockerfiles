FROM python:3.6

# Install GEOS and GDAL
RUN apt-get update && apt-get install -y libgeos-dev libgdal-dev python3-gdal

# Command lines utils that needs to be in the PATH
RUN pip3 install coverage codecov fabric3 flake8

# Install Heroku CLI
RUN wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz && \
  mkdir -p /usr/local/lib /usr/local/bin && \
  tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib && \
  ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

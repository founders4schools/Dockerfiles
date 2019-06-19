FROM python:3.8.0b1

# Install GEOS and GDAL
RUN apt-get update && apt-get install -y libgeos-dev libgdal-dev python3-gdal

# Install Nodejs 6
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 68576280 86E50310 && \
  echo "deb http://deb.nodesource.com/node_6.x jessie main" | tee /etc/apt/sources.list.d/nodesource.list && \
  apt-get update -qq ; \
  apt-get install -y -qq nodejs

# Command lines utils that needs to be in the PATH
RUN pip3 install coverage codecov fabric3 flake8

# Install Heroku CLI
RUN wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz && \
  mkdir -p /usr/local/lib /usr/local/bin && \
  tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib && \
  ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

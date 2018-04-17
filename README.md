# Dockerfiles

[![Build Status](https://travis-ci.org/founders4schools/Dockerfiles.svg?branch=master)](https://travis-ci.org/founders4schools/Dockerfiles

Repo to keep interesting Dockerfiles. Install the image you want from
[DockerHub](https://hub.docker.com/r/founders4schools/dockerfiles/tags/),
by specifying a tag as below:

```Dockerfile
FROM founders4schools/dockerfiles:[tag]
...
```

## Images

### Webserver

The webserver images are under the `python-gis-node` folder.

### Base image

The first file is providing a base image, installing the GEOS, GDAL 
and Python GDAL libraries, which are needed by a Webserver that 
is using PostGIS. They is using the tags `py3` on DockerHub, but it
is currently unused.

#### Circle CI 2.0

Webserver image has an extension for Circle CI, which installs Node, the Heroku
CLI and a couple of command line utilities. They is called `py3-ci` respectively.

For instance you would use the python 3 image from the Circle CI config:

```yaml
version: 2
jobs:
  build:
    working_directory: ~/work-dir
    docker:
      - image: founders4schools/dockerfiles:py3-ci
```

### Elasticsearch

The images to provided a configured Elasticsearch image, the main thing they do is
adding a configuration.

## Deployment

Images are build using Travis-CI, each environment specifies the mapping between the
Dockerfile path and the tag on Docker hub. Images are automatically published on each
pushed to master.

## TODO

* Try to base our images on the alpine ones, that should make them much smaller

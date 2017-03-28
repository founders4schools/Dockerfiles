# Dockerfiles

Repo to keep interesting Dockerfiles. Install the image you want from
[DockerHub](https://hub.docker.com/r/founders4schools/dockerfiles/tags/),
by specifying a tag as below:

```Dockerfile
FROM founders4schools/dockerfiles:[tag]
...
```

## Webserver

The webserver images are under the `python-gis-node` folder.
The structure is divided between Python 2 and Python 3 base images.

Each base image is installing the GEOS, GDAL and Python GDAL libraries,
which are needed by a Webserver that is using PostGIS.

Each image also install Node.js, which is needed to manage & build
static assets.

They are using the tags `py2` and `py3` on DockerHub.

### Circle CI 2.0

Each Webserver image has an extension for Circle CI, which install the Heroku
CLI and a couple of command line utilities. They are called `py2-ci` and
`py3-ci` respectively.

For instance you would use the python 2 image from the Circle CI config:

```yaml
version: 2
jobs:
  build:
    working_directory: ~/work-dir
    docker:
      - image: founders4schools/dockerfiles:py2-ci
```

## Elasticsearch [WIP]

I've started adding images for Elasticsearch v5, on the `elasticsearch` branch.
The tag currently available is `es5.2`.

## TODO

* Try to base our images on the alpine ones, that should make them much smaller
* The segmentation of images isn't great. Pushing on master rebuild all
  python images.

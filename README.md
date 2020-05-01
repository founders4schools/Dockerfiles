# Dockerfiles

**CAUTION:** Don't mistake *foundersforschools* Dockerhub organisation with *founders4schools*, to which credentials were lost with our long-departed colleagues.

Most Dockerfiles are kept in founders4schools repository, provisioning/docker directory.

This repository holds only the Dockerfiles that need to be *public*, for example so they are accessible by CircleCI.

Install the image you want from
[DockerHub](https://hub.docker.com/r/foundersforschools/dockerfiles/tags/),
by specifying a tag as below:

```Dockerfile
FROM foundersforschools/dockerfiles:[tag]
...
```

## Images

### nodejs

Public nodejs image with Chromium installed (for automated testing) and 
user ID changed so it does not interfere with our `app` user.

## Deployment

Run the following:
```bash
DOCKER_USERNAME=username DOCKER_PASSWORD=password TAG=nodejs ./docker_push.sh
```

You can set these variables in your `.bashrc` for your convenience.

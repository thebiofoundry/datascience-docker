# datascience-docker
The Biofoundry Data Science Dockerfile

Dockerhub: biofoundry/datascience-docker

This Dockerfile is an extension of jupyter/datascience-notebook and is the image that is used to build The Biofoundry Jupyterhub. Libraries that are required to be added to Jupyterhub can be appended to this Dockerfile..

## Rebuilding the Docker Image

To rebuild the docker image push changes to this repository. Once they are merged to the master branch they will automatically update on Dockerhub.

Once merged to master run:

```
docker-compose down
```

Once you have confirmation the container is stopped run:

```
docker-compose up -d --remove-orphans
```

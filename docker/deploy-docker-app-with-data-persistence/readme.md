# Deploying a docker application on a server with persisting data  

## In a Nut Shell

![The Big Picture](/assets/deploy-docker-app-with-data-persistence/info.png)
\_The Big Picture


## To start the application

`docker-compose -f <name-of-the-yaml-file> up`

### Images here required by the dev server and to start up the application

1. The app image from AWS ECR

2. Images from dockerhub 

#

Take a look at the `docker-compose.yaml` file for a better understanding

#

### Data persistence

Volumes are used here, named volumes to be precise (Still learning about them!)

#

### To stop the container

`docker-compose -f <name-of-the-yaml-file> down`

#

If you restart the same container with any edits made prior to stopping the container, you'll be able to see them instead of starting from a clean slate again.
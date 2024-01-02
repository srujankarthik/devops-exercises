# Deploy Nexus as Docker Container

## What it solves

![What it solves](/assets/deploy-nexus-as-docker-container/nexus.png)
\_What it solves

#

What is nexus?

A repository manager for storing artifacts, like docker images, jar files etc.

#

### Steps

1. Create a server either on AWS or Digital Ocean, 

2. Remember that you need enough resources on the server, when installing nexus as it takes up quite a bit of storage

3. `ssh` into the server, `apt update`

4. install `docker`  

5. `docker volume create --name nexus-data` for persisting data using docker volume, for when container dies and we make a new one to restore all the data

6. `docker run -d -p 8081:8081 --name nexus -v nexus-data:/nexus-data sonatype/nexus3`

    `-d = detached mode`

    `-p 8081: 8081 = makes accessible at port 8081` make sure to check your firewall settings for the server

    `-v = named volume`

    `sonatype/nexus3 = image name`

7. `netstat -lnpt` to show the listening sockets, install it if you don't got it

8. Take the IP address and the port which is `<IP-addr>:8081` you'll see the nexus repo's UI

We've deployed nexus as a docker image on the server 
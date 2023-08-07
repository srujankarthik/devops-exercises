# Private Docker Registry (AWS ECR)

## Pre reqs (if you want to duplicate this kinda thing)

<br>

AWS account & AWS CLI configured

<br>

<br>

1. The `Dockerfile` here builds an image by dockerizing Node.js monogdb app

<br>

<br>

2. Login to AWS, have the CLI configured and create a private ECR repository 

<br>

<br>

3. Create a private ECR repo 

![Creating private Registry in AWS ECR](/assets/aws-ecr-docker-registry/01.png)
\_Create private ECR in AWS

<br>

<br>

4. Private ECR repo

![Private Registry in AWS ECR](/assets/aws-ecr-docker-registry/02.png)
\_Private ECR repo in AWS

<br>

<br>

5. Authenticate the docker client to the registry (if AWS CLI & Docker aren't installed it def will not work)

![Authenticate docker client](/assets/aws-ecr-docker-registry/03.png)
\_Authenticate docker client

<br>

<br>

6. Build your docker image if you haven't by `docker build -t <name>`, tag the image and push the image to the registry 

![Private Registry in AWS ECR](/assets/aws-ecr-docker-registry/04.png)
\_Push commands to push the image the the private ECR repo

<br>

<br>

7. Go to the repository, check for the image artifact 

![Private Registry in AWS ECR](/assets/aws-ecr-docker-registry/05.png)
\_Private ECR repo in AWS

<br>
# Deploying a Node app On AWS EC2 Server 

## The Node app is a uni project worked on by me and my group (Soft design studio - Spring '22)

#

## Pre reqs (if you want to duplicate this kinda thing)

<br>

AWS account

<br>

# Creating an IAM role

<br>

1. Log in as root and head over to IAM in the console

<br>

<br>

2. Create a user and set permissions 

![Setting user permissions in AWS IAM](/assets/aws-ec2-deploy/aws-1.png)
\_Set user permissions

<br>

<br>

3. Review and create

![Review and create page](/assets/aws-ec2-deploy/aws-2.png)
\_Review and create page on the AWS console

<br>

<br>

4. IAM User  

![IAM Users page](/assets/aws-ec2-deploy/aws-3.png)
\_The users page has been created with the name as group-arrangement-deploy

<br>

<br>

5. Log in as the IAM user from the AWS management console

<br>

<br>

6. Create an EC2 instance & since we'll be using SSH to connect to that instance generate (or use an existing) a key pair and launch the instance

![EC2 instance](/assets/aws-ec2-deploy/aws-4.png)
\_The EC2 instance has been created from the IAM user

<br>

<br>

7. SSH into the instance

![SSH into EC2 instance](/assets/aws-ec2-deploy/aws-5.png)
\_SSH into EC2 instance

<br>

<br>

8. Since this is a node app, here are a few additional steps to get the app working (might be diff based on circumstances)
#
 Install node and npm `apt install -y node npm `
#
 create a .env file if needed to store your environment vars
#
 If the dependencies aren't installed correctly, recheck node version (Ubunutu 22.04 installs node v12 for some reason)
#
 Install nvm for diff node versions `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash  ` 
#

<br>

<br>

9. Head over to the instance, click on it and move over to the security tab

![EC2 instance security](/assets/aws-ec2-deploy/aws-6.png)
\_EC2 instance security tab

<br>

<br>

10. Edit inbound rules to expose port (in my case it is 8080)

![Edit Inbound Rules](/assets/aws-ec2-deploy/aws-7.png)
\_Edit Inbound Rules (Firewall)

<br>

<br>

11. There it is, our working app should be accessed from the `<publicIPv4>:<port>`

![Final result](/assets/aws-ec2-deploy/aws-8.png)
\_Working app

<br>

<br>

If you made it this far, thank you for reading :tada:! Here's something similar in Digital Ocean I did a while ago if you want to take a **[look](https://github.com/srujankarthik/DevOps/tree/main/05-exercise-cloud-IaaS-project)**

<br>

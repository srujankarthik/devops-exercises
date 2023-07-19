# Ansible Practice

## Enable password-less SSH for ansible

#

1. Create any 2 EC2 (any distro) Instances  

<br>

2. ssh into both instances, `ssh-keygen` to generate the public and private keys

<br>

<br>

3. Make one of the instances a target, whilst the other main 

<br>

<br>

4. Copy the target's public rsa key to the known_hosts of the main instance and ssh using the public IP of the target's instance.

<br>
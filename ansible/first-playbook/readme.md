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

<br>

5. You should be able to ssh into the instance without requiring any authentication

<br>

<br>

6. Install ansible and create an inventory file in the directory with the target's IP address to make it convenient (skip the latter part if you don't like it, or leave it as default)

<br>

<br>

7. Run this ad hoc command `ansible -i inventory all -m "shell" -a "touch randomfile"`

![Running the ansible command](/assets/ansible/ansible-01.png)
\_Run the command

<br>

<br>

8. View the target server

![View the targets server](/assets/ansible/ansible-02.png)
\_View the targets server

<br>

<br>

9. Execute the first-playbook using `ansible-playbook -i inventory first-playbook.yaml`

![Run the command](/assets/ansible/ansible-03.png)
\_Running the command

<br>

<br>

10. View the status in the target by running the command `sudo systemctl status nginx`

![Running the system services command for nginx](/assets/ansible/ansible-04.png)
\_Listing the services on the target for nginx

<br>

<br>

### i still have to practice more!

<br>
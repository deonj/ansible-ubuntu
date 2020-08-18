# ansible-ubuntu

Ansible v2.9.6 built on ubuntu:latest

**How to use:**

* A volume should be created and mounted which will allow scripts and logs to be copied from the host to the container and vice versa
* Folders are created for script files (ansible_scripts) and log files (ansi_logs) in /etc/ansible
* The username and password for remote login is specified in group_vars/all.yml and should be changed to match your specific credentials
* Uses the default ini style for hosts. Uncomment the line specified and rebuild if using YAML style for hosts

docker run --name *your_container_name* --mount source=*your_volume_name*,target=/etc/ansible -it -d deonj/ansible-ubuntu

**example:** 
    
    *docker run --name run_ansible --mount source=ansible_vol,target=/etc/ansible -it -d deonj/ansible-ubuntu*

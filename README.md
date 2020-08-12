# ansible-ubuntu

Ansible built on ubuntu:latest

* 
* If you are using the docker-compose file to build then ensure that the phpipam-1.4.tar file is present in the same directory (can be changed in the dockerfile)
* The url will be *localhost:8080/phpipam/*

docker run --name run_ansible --mount source=ansible_vol,target=/etc/ansible -it -d deonj/ansible-ubuntu

FROM ubuntu:latest
MAINTAINER deonj
RUN apt-get update
RUN apt-get install -y ansible \
    python3-paramiko \
    nano
RUN rm -rf /var/lib/apt/lists/*
WORKDIR /etc/ansible
RUN mkdir group_vars
RUN touch group_vars/all.yml
RUN echo '---' >> group_vars/all.yml
RUN echo 'username: your_username_here' >> group_vars/all.yml
RUN echo 'password: your_password_here' >> group_vars/all.yml
RUN echo '...' >> group_vars/all.yml
RUN mkdir ansible_scripts
RUN mkdir ansi_logs
RUN sed -i 's/#log_path.*/log_path = \/etc\/ansible\/ansi_logs\/ansible.log/' ansible.cfg
# Uncomment the following line if using YAML format for hosts
# RUN sed -i 's/#inventory.*/inventory      = \/etc\/ansible\/hosts.yml/' ansible.cfg

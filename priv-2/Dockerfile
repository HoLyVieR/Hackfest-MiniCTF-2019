FROM ubuntu:16.04

# Base Docker for unpriviledge SSH
RUN mkdir /home/challenge/
RUN useradd -d /home/challenge/ -s /bin/bash challenge
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# Target victim of the challenge
RUN useradd admin
RUN apt-get update
RUn apt-get install -y sudo vim

# Faulty permission
RUN echo "challenge ALL=(admin) NOPASSWD: /bin/chmod" >> /etc/sudoers
RUN mkdir /home/admin/
RUN echo "FLAG-d375a8ad4e53972c3c0d149c823e4547" >> /home/admin/flag.txt
RUN chmod 640 /home/admin/flag.txt
RUN chown admin:admin /home/admin/flag.txt


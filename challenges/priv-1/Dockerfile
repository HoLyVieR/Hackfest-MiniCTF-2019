FROM ubuntu:16.04

# Base Docker for unpriviledge SSH
RUN mkdir /home/challenge/
RUN useradd -d /home/challenge/ -s /bin/bash challenge
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# Target victim of the challenge
RUN useradd admin
RUN apt-get update
RUn apt-get install -y sudo vim gcc

# Faulty permission
RUN echo "challenge ALL=(admin) NOPASSWD: /bin/chmod" >> /etc/sudoers
RUN echo "challenge ALL=(admin) NOPASSWD: /usr/bin/gcc" >> /etc/sudoers
RUN mkdir /home/admin/
RUN echo "FLAG-92d4852a246b83afd5ab0c143debe5f9" >> /home/admin/flag.txt
RUN chmod 640 /home/admin/flag.txt
RUN chown root:admin /home/admin/flag.txt


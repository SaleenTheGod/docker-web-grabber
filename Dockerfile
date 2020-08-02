FROM centos:centos8
RUN dnf update -y
RUN dnf install wget -y
RUN alias ll='ls -alh --color=auto'
COPY entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "entrypoint.sh"]
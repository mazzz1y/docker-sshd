FROM ubuntu:22.04

RUN apt-get update && \
  apt-get install -y openssh-server rsync && \
  echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config && \
  echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && \
  mkdir -p /run/sshd && \
  rm -rf /var/lib/apt/lists/* /etc/ssh/ssh_host_*

COPY docker-entrypoint.sh /
ENTRYPOINT [ "/docker-entrypoint.sh" ]
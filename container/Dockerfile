FROM almalinux:8

COPY create-dirs-script.sh /scripts/create-dirs-script.sh

RUN echo "Setup Start! -----" \
    && chmod 755 /scripts/create-dirs-script.sh \
    && dnf check-update; dnf update -y \
    && echo "Install SSHD!" \
    && dnf install -y openssh-server openssh-clients \
    && echo "Install tools and basics!" \
    && dnf install -y epel-release \
    && dnf install -y passwd shadow-utils man less vim procps-ng psmisc htop \
    && useradd -m -s /bin/bash shell-training \
    && echo "fun with the shell" | passwd --stdin shell-training \
    && echo "Setup Done! -----"

# creating host files and such
RUN echo "SSH Setup start! -----"; \
    echo "Generating Host Keys"; \
    ssh-keygen -b 4096 -f /etc/ssh/ssh_host_rsa_key -t rsa -N ""; \
    ssh-keygen -b 1024 -f /etc/ssh/ssh_host_dsa_key -t dsa -N ""; \
    ssh-keygen -b  521 -f /etc/ssh/ssh_host_ecdsa_key -t ecdsa -N ""; \
    ssh-keygen -b 4096 -f /etc/ssh/ssh_host_ed25519_key -t ed25519 -N ""; \
    echo "chmod 600 on keys"; \
    chmod 600 /etc/ssh/*key; \
    echo "SSH Setup Done! -----";

USER shell-training
RUN /scripts/create-dirs-script.sh

USER root

CMD ["/usr/sbin/sshd", "-D"]
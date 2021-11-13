FROM registry.access.redhat.com/ubi8/ubi

RUN dnf install -y npm && npm install -g --unsafe-perm purescript && npm install -g --unsafe-perm spago

CMD ["/bin/bash"]

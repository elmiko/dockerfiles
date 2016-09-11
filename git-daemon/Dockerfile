FROM fedora:24

VOLUME /opt/git

RUN dnf install -y git-daemon

ADD start-git-daemon.sh /opt/

CMD /opt/start-git-daemon.sh

FROM fedora:24

RUN dnf install -y \
    graphite-api python-gunicorn \
 && dnf clean all

ADD start.sh /opt/

EXPOSE 8000

CMD /opt/start.sh

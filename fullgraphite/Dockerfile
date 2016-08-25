FROM fedora:24

RUN dnf install -y \
    python-carbon graphite-api python-gunicorn \
 && dnf clean all

COPY start.sh /opt/graphite/
COPY carbon.conf /etc/carbon/

EXPOSE \
    2003 \
    8000

CMD /opt/graphite/start.sh

FROM fedora:24

RUN dnf install -y \
    python-carbon \
 && dnf clean all

COPY start.sh /opt/carbon/
COPY carbon.conf /etc/carbon/

EXPOSE \
    2003 \
    2004 \
    7002

CMD /opt/carbon/start.sh

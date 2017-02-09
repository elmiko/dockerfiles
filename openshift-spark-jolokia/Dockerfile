FROM radanalyticsio/openshift-spark

ADD https://repo1.maven.org/maven2/org/jolokia/jolokia-jvm/1.3.5/jolokia-jvm-1.3.5-agent.jar /opt/spark/jolokia-jvm-agent.jar
USER root
RUN chmod 755 /opt/spark/jolokia-jvm-agent.jar
USER 185

ADD launch.sh /opt/spark/bin/

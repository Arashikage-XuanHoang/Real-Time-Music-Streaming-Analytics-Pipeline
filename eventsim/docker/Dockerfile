FROM adoptopenjdk:11.0.8_10-jre-hotspot-bionic

RUN set -ex; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    mkdir -p /opt/eventsim

WORKDIR /opt/eventsim

COPY docker/eventsim.sh /opt/eventsim/eventsim.sh
COPY examples /opt/eventsim/examples
COPY data /opt/eventsim/data
COPY target/scala-2.12/eventsim-assembly-2.0.jar /opt/eventsim/eventsim-assembly-2.0.jar

RUN chmod +x /opt/eventsim/eventsim.sh

ENTRYPOINT ["/opt/eventsim/eventsim.sh"]
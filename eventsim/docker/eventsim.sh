#!/bin/bash

java -XX:+AggressiveOpts \
     -XX:+UseG1GC \
     -XX:+UseStringDeduplication \
     -Xmx8G \
     -jar /opt/eventsim/eventsim-assembly-2.0.jar "$@"
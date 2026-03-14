#! /bin/bash
java -XX:+UseG1GC -XX:+UseStringDeduplication -Xms1g -Xmx3g -jar eventsim-assembly-2.0.jar $*

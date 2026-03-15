#! /bin/bash
java -XX:+UseG1GC -XX:+UseStringDeduplication -Xms256m -Xmx512m -jar eventsim-assembly-2.0.jar $*

#! /bin/bash
java -XX:+UseG1GC -XX:+UseStringDeduplication -Xms128M -Xmx256M -jar eventsim-assembly-2.0.jar $*

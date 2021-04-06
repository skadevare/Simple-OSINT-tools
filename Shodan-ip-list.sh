#!/bin/bash
#
#
echo "###########################################"
echo " - Shodan multiple ips from file-list.sh - "
echo "###########################################"
echo "Input filelist:"
read varfilelist
echo "Save output to:"
read varoutput
echo "start"
while read p
do
        shodan host ${p}>>$varoutput
done<$varfilelist

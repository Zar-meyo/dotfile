#!/bin/sh

#percent=$(
#    df -H / | grep -vE '^Filesystem' | awk '{ print $5}'
#    )

#remaining=$(
#    df -H / | grep -vE '^Filesystem' | awk '{ print $4}'
#    )

total="$(free -m | grep Mem: | awk '{ print $2 }')"
used="$(free -m | grep Mem: | awk '{ print $3 }')"
free=$(expr $total - $used)
echo "$used•$total"

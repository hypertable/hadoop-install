#!/bin/bash

SCRIPT_DIR=`dirname $0`

COMMAND="/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config /etc/hadoop/conf start nodemanager"

su -s /bin/bash yarn -c "source $SCRIPT_DIR/hadoop_environment.sh; ${COMMAND}"

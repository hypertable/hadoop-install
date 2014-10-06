#!/bin/bash

SCRIPT_DIR=`dirname $0`

COMMAND="/usr/lib/hadoop/sbin/hadoop-daemon.sh --config /etc/hadoop/conf stop namenode"
ENV_PREFIX="env HADOOP_LOG_DIR=/var/log/hadoop/hdfs HADOOP_PID_DIR=/var/run/hadoop/hdfs"

su -s /bin/bash hdfs -c "source $SCRIPT_DIR/hadoop_environment.sh; ${ENV_PREFIX} ${COMMAND}"

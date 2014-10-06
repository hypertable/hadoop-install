#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: clean_master.sh <hadoop_dir_disk1> [<hadoop_dir_disk2> ...]"
    exit 0
fi

YARN_DIRS=
NAMENODE_DIRS=
while [ $# -gt 0 ] ; do
    YARN_DIRS="${YARN_DIRS} $1/yarn/local $1/yarn/logs"
    NAMENODE_DIRS="${NAMENODE_DIRS} $1/dfs/nn"
    shift
done

# Yarn directories
rm -rf ${YARN_DIRS}

# NameNode directories
rm -rf ${NAMENODE_DIRS}

# Logging directories
rm -rf /var/log/hadoop/*

# PID file directories
rm -rf /var/run/hadoop/*

rm -rf /usr/lib/hadoop
rm -rf /usr/lib/hadoop-hdfs
rm -rf /usr/lib/hadoop-yarn
rm -rf /usr/lib/hadoop-mapreduce

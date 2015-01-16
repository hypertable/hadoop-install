#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: clean_slave.sh <hadoop_dir_disk1> [<hadoop_dir_disk2> ...]"
    exit 0
fi

MAPRED_DIRS=
DATANODE_DIRS=
for arg in "$@"; do
    MAPRED_DIRS="${MAPRED_DIRS} ${arg}/mapred/local"
    DATANODE_DIRS="${DATANODE_DIRS} ${arg}/dfs/dn ${arg}/hdfs/data"
done

# Yarn directories
rm -rf ${MAPRED_DIRS}

# DataNode directories
rm -rf ${DATANODE_DIRS}

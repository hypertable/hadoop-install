#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: clean_master.sh <hadoop_dir_disk1> [<hadoop_dir_disk2> ...]"
    exit 0
fi

NAMENODE_DIRS=
for arg in "$@"; do
    NAMENODE_DIRS="${NAMENODE_DIRS} ${arg}/dfs/nn ${arg}/hdfs/namenode"
done

# NameNode directories
rm -rf ${NAMENODE_DIRS}

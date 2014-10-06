#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: clean_master.sh <hadoop_dir_disk1> [<hadoop_dir_disk2> ...]"
    exit 0
fi

NAMENODE_DIRS=
while [ $# -gt 0 ] ; do
    NAMENODE_DIRS="${NAMENODE_DIRS} $1/dfs/nn $1/hdfs/namenode"
    shift
done

# NameNode directories
rm -rf ${NAMENODE_DIRS}

#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: install_services_master.sh <hadoop_dir_disk1> [<hadoop_dir_disk2> ...]"
    exit 0
fi

NAMENODE_DIRS=
while [ $# -gt 0 ] ; do
    NAMENODE_DIRS="${NAMENODE_DIRS} $1/dfs/nn"
    shift
done

mkdir -p ${NAMENODE_DIRS}
chmod 700 ${NAMENODE_DIRS}
chown -R hdfs:hadoop ${NAMENODE_DIRS}

yum -y install hadoop-0.20-namenode hadoop-0.20-jobtracker

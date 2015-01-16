#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: install_services_master.sh <hadoop_dir_disk1> [<hadoop_dir_disk2> ...]"
    exit 0
fi

MAPRED_DIRS=
NAMENODE_DIRS=
for arg in "$@"; do
    MAPRED_DIRS="${MAPRED_DIRS} ${arg}/mapred/local"
    NAMENODE_DIRS="${NAMENODE_DIRS} ${arg}/dfs/nn"
done

mkdir -p ${MAPRED_DIRS}
chmod 755 ${MAPRED_DIRS}
chown -R mapred:hadoop ${MAPRED_DIRS}

mkdir -p ${NAMENODE_DIRS}
chmod 700 ${NAMENODE_DIRS}
chown -R hdfs:hdfs ${NAMENODE_DIRS}

yum -y install hadoop-0.20-mapreduce-jobtracker hadoop-hdfs-namenode
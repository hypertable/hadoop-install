#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: install_services_master.sh <hadoop_dir_disk1> [<hadoop_dir_disk2> ...]"
    exit 0
fi

yum -y install hadoop-yarn-resourcemanager hadoop-hdfs-namenode

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

mkdir -p /usr/lib/hadoop/share/hadoop
cd /usr/lib/hadoop/share/hadoop/
ln -s /usr/lib/hadoop common
mkdir -p /usr/lib/hadoop-hdfs/share/hadoop
cd /usr/lib/hadoop-hdfs/share/hadoop
ln -s /usr/lib/hadoop-hdfs hdfs
mkdir -p /usr/lib/hadoop-yarn/share/hadoop
cd /usr/lib/hadoop-yarn/share/hadoop
ln -s /usr/lib/hadoop-yarn yarn
mkdir -p /usr/lib/hadoop-mapreduce/share/hadoop
cd /usr/lib/hadoop-mapreduce/share/hadoop
ln -s /usr/lib/hadoop-mapreduce mapreduce
mkdir -p /usr/lib/hadoop-0.20-mapreduce/share/hadoop
cd /usr/lib/hadoop-0.20-mapreduce/share/hadoop
ln -s /usr/lib/hadoop-0.20-mapreduce mapreduce

#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: install_services_slave.sh <hadoop_dir_disk1> [<hadoop_dir_disk2> ...]"
    exit 0
fi

yum -y install hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce

MAPRED_DIRS=
DATANODE_DIRS=
while [ $# -gt 0 ] ; do
    MAPRED_DIRS="${MAPRED_DIRS} $1/mapred/local"
    DATANODE_DIRS="${DATANODE_DIRS} $1/dfs/dn"
    shift
done

mkdir -p ${MAPRED_DIRS}
chmod 755 ${MAPRED_DIRS}
chown -R mapred:hadoop ${MAPRED_DIRS}

mkdir -p ${DATANODE_DIRS}
chmod 700 ${DATANODE_DIRS}
chown -R hdfs:hdfs ${DATANODE_DIRS}

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

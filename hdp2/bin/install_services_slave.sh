#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: install_services_slave.sh <hadoop_dir_disk1> [<hadoop_dir_disk2> ...]"
    exit 0
fi

YARN_DIRS=
DATANODE_DIRS=
while [ $# -gt 0 ] ; do
    YARN_DIRS="${YARN_DIRS} $1/yarn/local $1/yarn/logs"
    DATANODE_DIRS="${DATANODE_DIRS} $1/dfs/dn"
    shift
done

# Yarn directories
mkdir -p ${YARN_DIRS}
chown -R yarn:hadoop ${YARN_DIRS}
chmod 755 ${YARN_DIRS}

# DataNode directories
mkdir -p ${DATANODE_DIRS}
chmod 750 ${DATANODE_DIRS}
chown -R hdfs:hadoop ${DATANODE_DIRS}

# Logging directories
mkdir -p /var/log/hadoop/hdfs
chown -R hdfs:hadoop /var/log/hadoop/hdfs
chmod 755 /var/log/hadoop/hdfs

mkdir -p /var/log/hadoop/yarn
chown -R yarn:hadoop /var/log/hadoop/yarn
chmod 755 /var/log/hadoop/yarn

mkdir -p /var/log/hadoop/mapred
chown -R mapred:hadoop /var/log/hadoop/mapred
chmod 755 /var/log/hadoop/mapred

# PID file directories
mkdir -p /var/run/hadoop/hdfs
chown -R hdfs:hadoop /var/run/hadoop/hdfs
chmod 755 /var/run/hadoop/hdfs

mkdir -p /var/run/hadoop/yarn
chown -R yarn:hadoop /var/run/hadoop/yarn
chmod 755 /var/run/hadoop/yarn

mkdir -p /var/run/hadoop/mapred
chown -R mapred:hadoop /var/run/hadoop/mapred
chmod 755 /var/run/hadoop/mapred

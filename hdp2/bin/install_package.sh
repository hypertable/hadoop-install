#!/bin/bash

BASE_DIR=`dirname $0`/..

cp $BASE_DIR/hdp.repo /etc/yum.repos.d/
yum clean all
yum -y install hadoop hadoop-hdfs hadoop-libhdfs hadoop-yarn hadoop-mapreduce hadoop-client openssl
yum -y install snappy snappy-devel
ln -sf /usr/lib64/libsnappy.so /usr/lib/hadoop/lib/native/.
yum -y install lzo lzo-devel hadoop-lzo hadoop-lzo-native

cd /usr/lib/hadoop
ln -sf /var/log/hadoop/hdfs logs

cd /usr/lib/hadoop-hdfs
ln -sf /var/log/hadoop/hdfs logs

cd /usr/lib/hadoop-yarn
ln -sf /var/log/hadoop/yarn logs

cd /usr/lib/hadoop-mapreduce
ln -sf /var/log/hadoop/mapred logs

# Setup shared links
cd /usr/lib/hadoop
mkdir -p share/hadoop
cd share/hadoop
ln -sf /usr/lib/hadoop common

cd /usr/lib/hadoop-hdfs
mkdir -p share/hadoop
cd share/hadoop
ln -sf /usr/lib/hadoop-hdfs hdfs

cd /usr/lib/hadoop-yarn
mkdir -p share/hadoop
cd share/hadoop
ln -sf /usr/lib/hadoop-yarn yarn

cd /usr/lib/hadoop-mapreduce
mkdir -p share/hadoop
cd share/hadoop
ln -sf /usr/lib/hadoop-mapreduce mapreduce


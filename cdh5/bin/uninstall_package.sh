#!/bin/bash

yum -y remove hadoop

rm -f /etc/yum.repos.d/cdh5.repo

cd /usr/lib
rm -rf hadoop hadoop-hdfs hadoop-yarn hadoop-mapreduce hadoop-0.20-mapreduce

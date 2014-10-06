#!/bin/bash

SCRIPT_DIR=`dirname $0`
BASE_DIR=$SCRIPT_DIR/..

cd /usr/lib/hadoop-yarn;
rm -f logs

cd /usr/lib/hadoop
rm -f logs

yum -y remove hadoop-lzo hadoop-lzo-native

cd /usr/lib/hadoop/lib/native/
rm -f libsnappy.so

yum -y remove hadoop hadoop-hdfs hadoop-libhdfs hadoop-yarn hadoop-mapreduce hadoop-client

rm -f /etc/yum.repos.d/hdp.repo

echo "Removing user hdfs ..."
userdel -f -r hdfs
echo "Removing user yarn ..."
userdel -f -r yarn
echo "Removing user mapred ..."
userdel -f -r mapred
echo "Removing user hive ..."
userdel -f -r hive
echo "Removing user hcat ..."
userdel -f -r hcat
echo "Removing user hbase ..."
userdel -f -r hbase
echo "Removing user sqoop ..."
userdel -f -r sqoop
echo "Removing user zookeeper ..."
userdel -f -r zookeeper
echo "Removing user oozie ..."
userdel -f -r oozie
echo "Removing user knox ..."
userdel -f -r knox
echo "Removing user tez ..."
userdel -f -r tez
echo "Removing user falcon ..."
userdel -f -r falcon
echo "Removing user storm ..."
userdel -f -r storm
echo "Removing user nagios ..."
userdel -f -r nagios

echo "Removing group hadoop ..."
groupdel hadoop
echo "Removing group mapred ..."
groupdel mapred
echo "Removing group nagios ..."
groupdel nagios

# Make sure nobody is in nobody group
groups nobody | cut -f3- -d' ' | fgrep nobody > /dev/null
if [ $? -ne 0 ];then
    usermod -g nobody nobody
fi

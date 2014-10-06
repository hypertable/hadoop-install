#!/bin/bash

echo "Adding group hadoop ..."
groupadd -f -g 200 hadoop
echo "Adding group mapred ..."
groupadd -f -g 203 mapred
echo "Adding group nagios ..."
groupadd -f -g 300 nagios

echo "Adding user hdfs ..."
useradd -m -N -u 201 -g hadoop hdfs
echo "Adding user yarn ..."
useradd -m -N -u 202 -g hadoop yarn
echo "Adding user mapred ..."
useradd -m -N -u 203 -g mapred -G hadoop mapred
echo "Adding user hive ..."
useradd -m -N -u 204 -g hadoop hive
echo "Adding user hcat ..."
useradd -m -N -u 205 -g hadoop hcat
echo "Adding user hbase ..."
useradd -m -N -u 206 -g hadoop hbase
echo "Adding user sqoop ..."
useradd -m -N -u 207 -g hadoop sqoop
echo "Adding user zookeeper ..."
useradd -m -N -u 208 -g hadoop zookeeper
echo "Adding user oozie ..."
useradd -m -N -u 209 -g hadoop oozie
echo "Adding user knox ..."
useradd -m -N -u 210 -g hadoop knox
echo "Adding user tez ..."
useradd -m -N -u 211 -g hadoop tez
echo "Adding user falcon ..."
useradd -m -N -u 212 -g hadoop falcon
echo "Adding user storm ..."
useradd -m -N -u 213 -g hadoop storm
echo "Adding user nagios ..."
useradd -m -N -u 300 -g nagios nagios

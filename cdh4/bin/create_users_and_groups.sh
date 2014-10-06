#!/bin/bash

BASE_DIR=`dirname $0`/../..

chmod 755 /var/lib/hadoop-hdfs
rm -rf /var/lib/hadoop-hdfs/.ssh
usermod -d /var/lib/hadoop-hdfs hdfs
cp -r ${BASE_DIR}/ssh /var/lib/hadoop-hdfs/.ssh
chown -R hdfs:hdfs /var/lib/hadoop-hdfs/.ssh
chmod 400 /var/lib/hadoop-hdfs/.ssh/authorized_keys
chmod 600 /var/lib/hadoop-hdfs/.ssh/id_rsa
chmod 644 /var/lib/hadoop-hdfs/.ssh/id_rsa.pub
chmod 700 /var/lib/hadoop-hdfs/.ssh

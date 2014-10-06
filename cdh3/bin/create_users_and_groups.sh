#!/bin/bash

BASE_DIR=`dirname $0`/../..

rm -rf /usr/lib/hadoop-0.20/.ssh
usermod -d /usr/lib/hadoop-0.20 hdfs
cp -r ${BASE_DIR}/ssh /usr/lib/hadoop-0.20/.ssh
chown -R hdfs:hdfs /usr/lib/hadoop-0.20/.ssh
chmod 400 /usr/lib/hadoop-0.20/.ssh/authorized_keys
chmod 600 /usr/lib/hadoop-0.20/.ssh/id_rsa
chmod 644 /usr/lib/hadoop-0.20/.ssh/id_rsa.pub
chmod 700 /usr/lib/hadoop-0.20/.ssh

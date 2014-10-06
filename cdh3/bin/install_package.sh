#!/bin/bash

BASE_DIR=`dirname $0`/..

cp $BASE_DIR/cdh3.repo /etc/yum.repos.d/
yum clean all
yum -y install hadoop-0.20 hadoop-0.20-native

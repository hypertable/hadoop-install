#!/bin/bash

BASE_DIR=`dirname $0`/..

cp $BASE_DIR/cdh4.repo /etc/yum.repos.d/
yum clean all
yum -y install hadoop
